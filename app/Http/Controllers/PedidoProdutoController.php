<?php

namespace App\Http\Controllers;

use App\Models\Pedido;
use App\Models\PedidoProduto;
use App\Models\Produto;
use App\Models\Cliente;
use Illuminate\Http\Request;

class PedidoProdutoController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create(Pedido $pedido)
    {
        $produtos = Produto::all();
        return view('app.pedido_produto.create', ['pedido' => $pedido, 'produtos' => $produtos]);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request, Pedido $pedido)
    {
        $regras = [
            'produto_id' => 'exists:produtos,id',
            'quantidade' => 'required'
        ];
        
        $feedback = [
            'produto.id.exists' => 'O produto nao existe',
            'required' => 'O campo quantidade deve ter um valor valido'
        ];

        $request->validate($regras, $feedback);

        $pedido->produtos()->attach(
            $request->get('produto_id'),
            ['quantidade' => $request->get('quantidade')]
        );

        return redirect()->route('pedido-produto.create', ['pedido' => $pedido->id]);

    }

    /**
     * Display the specified resource.
     */
    public function show(Pedido $pedido)
    {
        $cliente = Cliente::find($pedido->cliente_id);
        $produtos = Produto::all();
        return view('app.pedido_produto.show', ['pedido' => $pedido, 'produtos' => $produtos, 'cliente' => $cliente]);
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
    public function destroy(PedidoProduto $pedidoProduto, $pedido_id)
    {
        
        $pedidoProduto->delete();

        return redirect()->route('pedido-produto.create', ['pedido' => $pedido_id]);

       
    }
}
