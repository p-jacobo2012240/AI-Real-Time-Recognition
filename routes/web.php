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
Route::get('/',  'PagesController@home'  ); //Resive un String

//Vista Acerca de
Route::get('/acerca', 'PagesController@acerca' );  //Resiviendo un String de path