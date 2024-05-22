<?php

use Illuminate\Support\Facades\Route;

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

Route::get('/', [App\Http\Controllers\IndexController::class, 'index'])->name('index');

Route::get('/catalog', [App\Http\Controllers\IndexController::class, 'catalog'])->name('catalog');

Route::get('/stati/{id}', [App\Http\Controllers\IndexController::class, 'stati'])->name('stati');


Route::group(['middleware' => ['auth:sanctum']], function () {
Route::get('/admin', [App\Http\Controllers\AdminController::class, 'index'])->name('admin_index');
Route::resource('blog', App\Http\Controllers\BlogController::class);
});
Auth::routes();
Route::get('/logout', [App\Http\Controllers\Auth\LoginController::class, 'logout']);
Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');




//Route::get('/', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

