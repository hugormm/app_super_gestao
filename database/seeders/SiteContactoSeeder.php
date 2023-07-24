<?php

namespace Database\Seeders;

use App\Models\SiteContacto;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class SiteContactoSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        /*
        $contacto = new SiteContacto();
        $contacto->nome = 'nome';
        $contacto->telefone = '914455566';
        $contacto->email = 'aac@adaf.com';
        $contacto->motivo_contacto = 1;
        $contacto->mensagem = 'sacdavsdvsdvsdavsavfabsfb';
        $contacto->save();
        */

        SiteContacto::factory()->count(100)->create();
    }
}
