<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

Route::get('/', 'HomeController@index');
Route::get('home', 'HomeController@index');

Route::group(['prefix' => 'admin'], function () {
	Route::get('/','AdminController@index');
});

Route::group(['prefix' => 'menu'], function () {
	Route::get('/','MenuController@index');
});

Route::group(['prefix' => 'pages'], function () {
	Route::get('/{id}','PageController@index');
});