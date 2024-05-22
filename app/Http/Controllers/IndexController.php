<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\Blog;

class IndexController extends Controller
{
	


	public function index()
	{
		$blog = Blog::query()->with(['files'])->paginate(5);
		
		return view('index',compact('blog'));
	}

    public function catalog()
	{
		
		$blog = Blog::query()->with(['files'])->paginate(5);
		
		return view('catalog',compact('blog'));
	}
	
   public function stati(Request $request)
	{
		
		$blog = Blog::find($request->id)->orderBy('id','desc')->with('files')->first();
		
		return view('stati',compact('blog'));
	}
	

	
}