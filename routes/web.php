<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

//Vista Home
Route::get('/', function () {
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
});

//Vista Acerca de
Route::get('/acerca', function (){
    return view('about');
});