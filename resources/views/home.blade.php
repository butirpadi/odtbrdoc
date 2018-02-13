@extends('layouts.master')

@section('styles')
<style>
  .inner h3{
    font-size: 24px!important;
  }
</style>
@append

@section('content')

<!-- Main content -->
<section class="content">
    <div class="box box-primary" >
        <div class="box-header with-border" >
            <h3 class="box-title" >Home</h3>
        </div>
        <div class="box-body" >
            @foreach($sidemenu as $dt )
                @if(count($dt->childmenu) > 0)
                    <li  >
                        <a href="{{$dt->href}}">
                            {{$dt->title}}
                        </a>
                        <ul >
                            @foreach($dt->childmenu as $chd)
                                <li  ><a href="{{$chd->href}}">{{$chd->title }}</a></li>
                            @endforeach
                        </ul>
                    </li>
                @else

                    @if(!$dt->parentMenu)
                        <li >
                            <a href="{{$dt->href}}">{{$dt->title}} </a>
                        </li>
                    @endif
                @endif
            @endforeach
        </div>
        <div class="box-footer" ></div>
    </div>
</section><!-- /.content -->
@stop