<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\JourneyController;
use App\Http\Controllers\LoginController;

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

Route::get('/', function () {
    return view('login');
});
Route::post('/create', [JourneyController::class,'create'])->name('create');
Route::get('/create', [JourneyController::class,'create'])->name('create');
Route::get('/dashboard',[JourneyController::class,'getJourney']);
// Route::get('/dashboard',[JourneyController::class,'getApi']);
Route::get('login', [LoginController::class, 'index'])->name('login');
Route::post('login', [LoginController::class, 'login'])->name('login'); 
Route::get('signout', [LoginController::class, 'signOut'])->name('signout');
