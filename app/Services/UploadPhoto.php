<?php
namespace App\Services;
use Storage;
use Image;
use Intervention\Image\Facades\Image as ImageInt;
use Carbon\Carbon;
use Spatie\ImageOptimizer\OptimizerChainFactory;
use App\Models\File as FlieSave;
use Router;
class UploadPhoto {
	const SIZES = [
	    //'thumbs2000' => 2000,
	    'thumbs1000' => 1000,
	    'thumbs700' => 700,
        'thumbs300' => 300,
        //'thumbs170' => 170,
		
    ];
	
	
	
    static function upload($file, $compress = true){
		
	if (!$file){ return null;}
      
	 $file_name = time().rand(0,9).'.'.$file->getClientOriginalExtension();
	
	 $folder= request()->segments()[0];
	
	 $dir = sprintf('/%s/%s', ltrim('/'.$folder.'/original', '/'), Carbon::now()->format('Y/m/d'));
	 $disk = 'public';
	 $path = $file->store($dir, $disk);
	 $resize=[];
	
	 foreach (self::SIZES as $key => $size) {
		$destFile = str_replace('original','resize_'.$key,$path);
		$resize[] = $destFile;
		$image = Image::make(Storage::disk('public')->path($path))->resize($size, null, function($constraint) {
            $constraint->aspectRatio();
            //$constraint->upsize();
            });
		
		
	 $image->encode();
		
			Storage::disk('public')->put( $destFile, $image);
		}
		
		
		Storage::disk('public')->deleteDirectory($folder.'/original');
		
	
	
	   $file = FlieSave::create([
            'disk'          => $disk,
            'dir'           => $dir,
			//'original' => $path,
			'size_2000'         => $resize[0],
			'extralarge'         => $resize[1],
			'large'   => $resize[0],
			'medium'  => $resize[1],
			'small'  => $resize[2],
            'path'          => $path,
            'size'          => $file->getSize(),
            'mime_type'     => $file->getClientMimeType(),
            'name'          => ltrim($path, $dir),
            'original_name' => $file->getClientOriginalName(),
        ]);
		
	     return $file;
	 }
	

}