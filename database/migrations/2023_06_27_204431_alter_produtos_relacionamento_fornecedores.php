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
        Schema::table('produtos', function (Blueprint $table) {
            
            //como ja temos registos temos q inserir um registo para evitar q a fk fique a zeros nos registos existentes
            // vamos inserir e recuperar o id para usarmos em baixo na criacao da coluna

            $fornecedor_id = DB::table('fornecedores')->insertGetId([
                'nome' => 'Fornecedor3000',
                'site' => 'Fornecedor3000.com',
                'uf' => 'PT',
                'email' => 'Fornecedor3000@gamil.com'
            ]);

            $table->unsignedBigInteger('fornecedor_id')->default($fornecedor_id)->after('id');
            $table->foreign('fornecedor_id')->references('id')->on('fornecedores');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('produtos', function (Blueprint $table) {
            $table->dropForeign('produtos_fornecedor_id_foreign');
            $table->dropColumn('fornecedor_id');
        });
        
    }
};
