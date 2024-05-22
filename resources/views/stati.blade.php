@extends('layouts.app')

@section('content')
 <div class='container'>
 <h1>Статья {!! $blog->name  !!}</h1>
  <div class='stati'>
   
     <img class="card-img-top" src="{{ URL::asset('storage/'.$blog->files->medium)}}" alt="Card">
     <br><br>
     <div>
        {!! $blog->text  !!}
	 </div>
	 </div>
	  </div>
	
@endsection
