<?php
namespace Tests\Feature;

use App\Models\Task;
use Tests\TestCase;
use Illuminate\Foundation\Testing\RefreshDatabase;

class TaskApiTest extends TestCase
{
    use RefreshDatabase;

    public function test_can_list_tasks()
    {
        Task::factory()->count(15)->create();
    
        $response = $this->getJson('/api/tasks');

        $response->assertStatus(200)
            ->assertJsonStructure([
                'current_page',
                'data' => [
                    '*' => [ // Chaque tâche dans "data"
                        'id',
                        'title',
                        'description',
                        'status',
                        'start_date',
                        'end_date',   
                        'created_at',
                        'updated_at',
                    ],
                ],
                'first_page_url',
                'from',
                'last_page',
                'last_page_url',
                'links' => [ // Les liens de navigation
                    '*' => [
                        'url',
                        'label',
                        'active',
                    ],
                ],
                'next_page_url',
                'path',
                'per_page',
                'prev_page_url',
                'to',
                'total',
            ]);
    }

    public function test_can_create_task()
    {
        $data = [
            'title' => 'New Task',
            'description' => 'Task description',
            'status' => 'pending',
            'start_date' => '2024-12-15', // Ajoutez la date de début
            'end_date' => '2024-12-30', // Ajoutez la date de fin
        ];

        $response = $this->postJson('/api/tasks', $data);

        $response->assertStatus(201)->assertJsonFragment(['title' => 'New Task']);
    }

    public function test_can_update_task()
    {
        $task = Task::factory()->create();

        $data = [
            'status' => 'completed',
            'start_date' => '2024-12-15', // Met à jour la date de début
            'end_date' => '2024-12-30',   // Met à jour la date de fin
        ];

        $response = $this->putJson("/api/tasks/{$task->id}", $data);

        $response->assertStatus(200)->assertJsonFragment(['status' => 'completed']);
    }

    public function test_can_delete_task()
{
    $task = Task::factory()->create();

    $response = $this->deleteJson("/api/tasks/{$task->id}");

    $response->assertStatus(204);

    // Vérifie que la tâche a bien été supprimée de la base de données
    $this->assertDatabaseMissing('tasks', ['id' => $task->id]);
}

}
