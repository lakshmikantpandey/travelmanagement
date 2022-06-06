<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
Route::get('weather',function(){
    $response = Http::get('https://api.openweathermap.org/data/2.5/onecall', [
        'units'=>'imperial',
        'lat'=>request('lat'),
        'lon'=>request('lon'),
        'exclude'=>'minutely,hourly',
        'appid'=>'0ba169acfd3bf87109e2a43679390e3f'
    ]);
});
