<!-- Page header -->

<div class="col-sm-6">
    <ol class="breadcrumb float-sm-left">
        <li><a href="{{ route('admin_index') }}"><i class="icon-home2 position-left"></i> @lang('breadcram.main')</a>
        </li>

        @if (isset($ar_bread) && is_array($ar_bread) && count($ar_bread) > 0)
        @foreach ($ar_bread as $k => $v)
        &nbsp
        /
        &nbsp
        <li><a href="{{ $k }}">{{ $v }}</a></li>
        @endforeach
        @endif
        &nbsp

        @if($rout != 'admin_index')
        /
        &nbsp
        <li class="active">@yield('title')</li>
        @endif
    </ol>
</div><!-- /.col -->