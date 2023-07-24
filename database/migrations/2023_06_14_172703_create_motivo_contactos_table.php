<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
use App\Models\MotivoContacto;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('motivo_contactos', function (Blueprint $table) {
            $table->id();
            $table->string('motivo_contacto', 20);
            $table->timestamps();
        });

        /*
        MotivoContacto::create('Duvida');
        MotivoContacto::create('Elogia');
        MotivoContacto::create('Reclamacao');
        */
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('motivo_contactos');
    }
};
