@extends('layouts.master')

@section('styles')
<style>
  .inner h3{
    font-size: 24px!important;
  }
</style>
@append

@section('content')
<!-- Content Header (Page header) -->
<!-- Main content -->
<section class="content">
    <div class="box box-primary" >
        <div class="box-header with-border" >
            <h3 class="box-title" >
                {{$data->title}}
            </h3>
        </div>
        <div class="box-body" >
            <div class="embed-responsive embed-responsive-16by9">
                {!!$data->youtube_url!!}
            </div>
        </div>
        <div class="box-footer" ></div>
    </div>
</section><!-- /.content -->
@stop