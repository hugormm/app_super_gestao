<?php

namespace App\Http\Controllers;

use App\Models\Cliente;
use App\Models\Pedido;
use Illuminate\Http\Request;

class PedidoController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        $pedidos = Pedido::paginate(5);
        $clientes = Cliente::all();
        return view('app.pedido.index', ['pedidos' => $pedidos, 'request' => $request->all(), 'clientes' => $clientes]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $clientes = Cliente::all();
        return view('app.pedido.create', ['clientes' => $clientes]);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $regras = [
            'cliente_id' => 'exists:clientes,id'
        ];

        $feedback = [
            'cliente_id.exists' => 'O cliente informado nao existe'
        ];

        $request->validate($regras, $feedback);

        $pedido = new Pedido();
        $pedido->cliente_id = $request->get('cliente_id');
        $pedido->save();

        return redirect()->route('pedido.index');

    }

    /**
     * Display the specified resource.
     */
    public function show(Pedido $pedido)
    {
        $cliente = Cliente::find($pedido->cliente_id);
        return view('app.pedido.show', ['pedido' => $pedido, 'cliente' => $cliente]);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Pedido $pedido)
    {
        $pedido->delete();
        return redirect()->route('pedido.index');
    }
}
