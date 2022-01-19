<?php

use App\Http\Controllers\AuthController;
use App\Http\Controllers\ProductosController;
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

//127.0.0.1:8000/api/productos
route::get('/productos',        [ProductosController    ::class, 'getAllProducts']);

//127.0.0.1:8000/api/producto/#  hay 5 productos
route::get('/producto/{id}',    [ProductosController    ::class, 'getProduct']);

//127.0.0.1:8000/api/login
route::post('/login',           [AuthController         ::class, 'login']);