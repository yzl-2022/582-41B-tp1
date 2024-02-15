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

Route::get('/', function () {
    return view('welcome');
});


Route::get('/etudiants', [App\Http\Controllers\EtudiantController::class, 'index'])->name('etudiant.index');
Route::get('/etudiant/{id}', [App\Http\Controllers\EtudiantController::class, 'show'])->where('id', '[0-9]+')->name('etudiant.show');
Route::get('/create/etudiant', [App\Http\Controllers\TaskController::class, 'create'])->name('etudiant.create');
Route::post('/create/etudiant', [App\Http\Controllers\TaskController::class, 'store'])->name('etudiant.store');
Route::get('/edit/etudiant/{id}', [App\Http\Controllers\TaskController::class, 'edit'])->where('id', '[0-9]+')->name('etudiant.edit');
Route::put('/edit/etudiant/{id}', [App\Http\Controllers\TaskController::class, 'update'])->where('id', '[0-9]+')->name('etudiant.update');
Route::delete('/etudiant/{id}', [App\Http\Controllers\TaskController::class, 'destroy'])->where('id', '[0-9]+')->name('etudiant.delete');