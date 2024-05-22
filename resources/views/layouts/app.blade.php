<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'Laravel') }}</title>

    <!-- Fonts -->
    <link rel="dns-prefetch" href="//fonts.bunny.net">
    <link href="https://fonts.bunny.net/css?family=Nunito" rel="stylesheet">

    <!-- Scripts -->
	@vite(['resources/sass/app.scss', 'resources/js/app.js'])
    <link href="/css/bootstrap.min.css" rel="stylesheet">
	<style>
	   nav{
		   border:1px solid #ccc;
		   padding:10px 0;
	   }
	</style>
</head>
<body>
    <div id="app">
	<div class='container'>
       <nav class="nav nav-pills">
        <a class="nav-item nav-link" href="/">главная страница</a>
        <a class="nav-item nav-link" href="/catalog">статьи</a>
       
       </nav>
	   </div>

        <main class="py-4">
            @yield('content')
        </main>
    </div>
	<script src="./bootstrap.bundle.min.js"></script>
</body>
</html>