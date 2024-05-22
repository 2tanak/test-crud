@extends('layouts.app')

@section('content')
 <div class='container'>
 <h1>Catalog </h1>
  <div class='content' style='display:flex;gap:20px'>
  @if(count($blog) > 0)
  @foreach($blog as $item)

    <div class="col" style="width: 18rem;border:1px solid red">
	<img class="card-img-top" src="{{URL::asset('storage/'.$item->files->small)}}" alt="Card">
	
     
       <div class="card-body">
	   <div class='title'>{{$item->name}}</div>
         <p class="card-text">{!! $item->text !!}</p>
		 </br>
		 <a href="{{route('stati',$item->id)}}">Подробнее</a>
       </div>
     
	 </div>
  @endforeach
  @else
	  Записей нет
  @endif
   </div>
    
	  {{ $blog->links() }}
	  </div>
	
@endsection
