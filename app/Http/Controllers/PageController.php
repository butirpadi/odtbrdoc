<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\Http\Controllers\Controller;

class PageController extends Controller
{
	public function index($id){
		$data = \DB::table('pages')
					->find($id);
		return view('page',[
				'data' => $data
			]);
	}

}
