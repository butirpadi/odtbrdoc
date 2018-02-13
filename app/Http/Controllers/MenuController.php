<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\Http\Controllers\Controller;

class MenuController extends Controller
{
	public function index(){
		$data = \DB::table('menu')
					->whereRaw(\DB::raw('menu_id is NULL'))
					->orderBy('order','asc')
					->get();
		return view('menu.index',[
				'data' => $data
			]);
	}

}
