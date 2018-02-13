<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\Http\Controllers\Controller;

class HomeController extends Controller
{
	public function index(){
		// $data = \DB::table('view_armada')->orderBy('created_at','desc')->get();
		$data = \DB::table('pages')
					->select('pages.*', 'menu.id as menu_id', 'menu.href')
					->leftJoin('menu','pages.id','=','menu.page_id')
					->get();

		return view('home',[
				'data' => $data
			]);
	}

}
