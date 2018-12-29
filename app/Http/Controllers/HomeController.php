<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

//use App\Http\Controllers\MonumentoController;

use App\Monumento;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        
        $monumentos = Monumento::all();   
        return view('home', compact('monumentos'));
    
        
    }
}
