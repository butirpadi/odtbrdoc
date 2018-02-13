@extends('layouts.master')

@section('styles')
<!--Bootsrap Data Table-->
<link rel="stylesheet" href="plugins/datatables/dataTables.bootstrap.css">
<link href="plugins/datepicker/datepicker3.css" rel="stylesheet" type="text/css"/>

@append

@section('content')
<!-- Content Header (Page header) -->
<section class="content-header">
    <h1>
        Menu Manager
    </h1>
</section>

<!-- Main content -->
<section class="content">
    <!-- Default box -->
    <div class="box box-solid">
        <div class="box-header with-border" >
            <h3 class="box-title" >Menu</h3>
        </div>
        <div class="box-body">
            <table class="table table-bordered table-condensed" >
                <thead>
                    <tr>
                        <th>Name</th>
                        <th>Page</th>
                        <th>Order</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($data as $dt)
                        <tr>
                            <td>{{$dt->title}}</td>
                            <td></td>
                            <td></td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div><!-- /.box-body -->
        <div class="box-footer" >
            
        </div>
    </div><!-- /.box -->
</section><!-- /.content -->
@stop

@section('scripts')

<script type="text/javascript">
(function ($) {
    

})(jQuery);
</script>
@append