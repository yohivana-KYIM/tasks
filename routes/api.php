<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\API\TaskController;
/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});




// Route::apiResource('tasks', TaskController::class);



// Route pour lister toutes les tâches (GET)
Route::get('/tasks', [TaskController::class, 'index']);

// Route pour créer une nouvelle tâche (POST)
Route::post('/tasks', [TaskController::class, 'store']);

// Route pour afficher une tâche spécifique (GET)
Route::get('/tasks/{task}', [TaskController::class, 'show']);

// Route pour mettre à jour une tâche existante (PUT)
Route::put('/tasks/{task}', [TaskController::class, 'update']);

// Route pour supprimer une tâche (DELETE)
Route::delete('/tasks/{task}', [TaskController::class, 'destroy']);
