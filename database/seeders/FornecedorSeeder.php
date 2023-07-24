<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Fornecedor;
use Illuminate\Support\Facades\DB;

class FornecedorSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        //instanciando o objeto
        $fornecedor = new Fornecedor();
        $fornecedor->nome = 'Fornecedor100';
        $fornecedor->site = 'Fornecedor100.com';
        $fornecedor->uf = 'SP';
        $fornecedor->email = 'Fornecedor100@hotmai.com';
        $fornecedor->save();

        //outra forma, metodo create (atencao ao atributo fillable da classe)
        Fornecedor::create([
            'nome' => 'Fornecedor200',
            'site' => 'Fornecedor200.com',
            'uf' => 'SP',
            'email' => 'Fornecedor200@hotmai.com'
        ]);

        //metodo insert 
        DB::table('fornecedores')->insert([
            'nome' => 'Fornecedor300',
            'site' => 'Fornecedor300.com',
            'uf' => 'SP',
            'email' => 'Fornecedor300@hotmai.com'
        ]);

    }
}
