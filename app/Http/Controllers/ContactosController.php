<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\SiteContacto;
use App\Models\MotivoContacto;

class ContactosController extends Controller
{
    public function contacto(Request $request){

        $motivo_contactos = MotivoContacto::all();
        return view('site.contactos', ['motivo_contactos' => $motivo_contactos]);
    }

    public function salvar(Request $request){

        $request->validate([
            'nome' => 'required|min:3|max:40|unique:site_contactos', 
            'telefone' => 'required',
            'email' => 'email',
            'motivo_contactos_id' => 'required',
            'mensagem' => 'required|max:2000'
        ],
        [
            'nome.required' => 'O campo nome precisa ser preenchido',
            'nome.min' => 'O campo nome precisa ter n minimo 3 caracteres',
            'nome.max' => 'O campo nome precisa ter n maximo 40 caracteres',
            'nome.unique' => 'O nome ja esta em uso',
            'email.email' => 'introduza um e-mail valido',
            'mensagem.max' => 'a mensagem deve ter no maximo 2000 caracteres',
            'required' => 'o campo :attribute deve ser preenchido'   
        ]);
        
        SiteContacto::create($request->all());
        return redirect()->route('site.index');
         
    }
}
