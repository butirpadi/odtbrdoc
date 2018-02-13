@extends('layouts.master')

@section('styles')
<link rel="stylesheet" href="plugins/datatables/dataTables.bootstrap.css">
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
            <!-- @foreach($sidemenu as $dt )
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
            @endforeach -->

            <table class="table table-bordered table-condensed" id="table-data" >
                <thead>
                    <tr>
                        <th>Operation Title</th>
                        <th class="col-xs-1" >Link</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($data as $dt)
                        <tr>
                            <td>{{$dt->title}}</td>
                            <td class="text-center" >
                                <a class="btn btn-xs btn-primary" href="{{$dt->href}}"><i class="fa fa-arrow-right" ></i></a>
                            </td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
        <div class="box-footer" ></div>
    </div>
</section><!-- /.content -->
@stop

@section('scripts')
<script src="plugins/datatables/jquery.dataTables.min.js"></script>
<script src="plugins/datatables/dataTables.bootstrap.min.js"></script>
<script type="text/javascript">
(function ($) {

    var TBL_KATEGORI = $('#table-data').DataTable({
        sort:false
    });

})(jQuery);
</script>
@append