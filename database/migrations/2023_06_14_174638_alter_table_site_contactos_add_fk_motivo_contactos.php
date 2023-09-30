<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        //adicionar coluna mozivo_contactos_id
        Schema::table('site_contactos', function (Blueprint $table) {
            $table->unsignedBigInteger('motivo_contactos_id');
        });

        //migrar dados da coluna mozivo_contactos para a coluna motivo_contactos_id
        DB::statement('update site_contactos set motivo_contactos_id = motivo_contacto');

        //criacao da FK e remover a coluna motivo contacto
        Schema::table('site_contactos', function (Blueprint $table) {
            $table->foreign('motivo_contactos_id')->references('id')->on('motivo_contactos');
            $table->dropColumn('motivo_contacto');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        //reveter todas as operacoes
        Schema::table('site_contactos', function (Blueprint $table) {
            $table->integer('motivo_contacto');
            $table->dropForeign('site_contactos_motivo_contactos_id_foreign');
        });

        DB::statement('update site_contactos set motivo_contacto = motivo_contactos_id');

        Schema::table('site_contactos', function (Blueprint $table) {
            $table->dropColumn('motivo_contactos_id');
        });

    }
};
