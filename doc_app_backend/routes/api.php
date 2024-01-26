<?php

use App\Http\Controllers\appointmentController;
use App\Http\Controllers\UserController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

Route::middleware('auth:sanctum')->group(function(){
    Route::get('/user', [UserController::class, 'index']);
    Route::post('/book', [appointmentController::class], 'store');
    Route::get('/appointment', [appointmentController::class, 'index']);
});


Route::post('/login', [UserController::class, 'login']);
Route::post('/register', [UserController::class, 'register']);