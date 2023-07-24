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
        //criar a tabela filiais
        Schema::create('filiais', function (Blueprint $table) {
            $table->id();
            $table->string('filial', 30);
            $table->timestamps();
        });
         //criar a tabela auxiliar produto_filiais e vamos adicionar aqui as colunas q vao variar dependendo da filial
        Schema::create('produto_filiais', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('filial_id');
            $table->unsignedBigInteger('produto_id');
            $table->decimal('preco_venda', 8, 2);
            $table->integer('stock_minimo');
            $table->integer('stock_maximo');
            $table->timestamps();

            //foreign key ( constrains )
            $table->foreign('filial_id')->references('id')->on('filiais');
            $table->foreign('produto_id')->references('id')->on('produtos');
        });

        //vamos ag remover as colunas q adicionamos em cima, da tabela produtos
        Schema::table('produtos', function (Blueprint $table) {
            $table->dropColumn(['preco_venda', 'stock_minimo', 'stock_maximpo']);
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        //adicionar colunas da tabela produtos que foram retiradas antes
        Schema::table('produtos', function (Blueprint $table) {
            $table->decimal('preco_venda', 8, 2);
            $table->integer('stock_minimo');
            $table->integer('stock_maximo');
        });

        //remover a tabela produtos_filais e as suas constrains
        Schema::dropIfExists('produto_filiais');
        //remover a tabela filiais
        Schema::dropIfExists('filiais');
    }
};
