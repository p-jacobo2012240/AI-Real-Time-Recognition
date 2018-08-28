<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class PagesController extends Controller
{
    //Inicializando la clase Home desde el Path
    public function home(){
        $links = [
            'https://github.com/p-jacobo2012240' => 'Mi Github',
            'https://laravel.com/' => 'Laravel',
            'https://nodejs.org/es/' => 'NodeJs'
            //    Key                       Value         
        ];
        $autor = 'Pablo Daniel';
    
        return view('welcome', [
            'autor' => $autor,
            'links' => $links
        ]);
    }

    //Inicializando el about
    public function acerca(){
        return view('about');
    }

}
