<?php

namespace App\Http\Controllers;
use App\Models\MotivoContacto;


class PrincipalController extends Controller
{
    public function principal(){

        $motivo_contactos = MotivoContacto::all();

        return view('site.principal', ['motivo_contactos' => $motivo_contactos]);
    }
}
