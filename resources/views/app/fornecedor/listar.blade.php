@extends('app.layouts.basico')

@section('titulo', 'Fornecedor')
@section('conteudo')

    <div class="conteudo-pagina">

        <div class="titulo-pagina-2">
            <p>Fornecedores</p>
        </div>

        <div class="menu">
            <ul>
                <li><a href="{{ route('app.fornecedor.adicionar') }}">Novo</a></li>
            </ul>
        </div>

        <div class="informacao-pagina">
            <div style="width: 90%; margin-left: auto; margin-right: auto;">
                <table border="1" width="100%">
                    <thead>
                        <tr>
                            <th>Nome</th>
                            <th>Site</th>
                            <th>Uf</th>
                            <th>Email</th>
                            <th></th>
                            <th></th>
                        </tr>
                    </thead>

                    <tbody>
                        @foreach ($fornecedores as $fornecedor)
                            <tr>
                                <th>{{ $fornecedor->nome }}</th>
                                <th>{{ $fornecedor->site }}</th>
                                <th>{{ $fornecedor->uf }}</th>
                                <th>{{ $fornecedor->email }}</th>
                                <th><a href="{{ route('app.fornecedor.excluir', $fornecedor->id) }}">Excluir</a></th>
                                <th><a href="{{ route('app.fornecedor.editar', $fornecedor->id) }}">Editar</a></th>
                            </tr>
                            <tr>
                                <td colspan="6">
                                    <p>Lista de produtos</p>
                                    <table border="1" style="margin:20px;">
                                        <thead>
                                            <tr>
                                                <td>ID</td>
                                                <td>Nome</td>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            @foreach ($fornecedor->produto as $key => $produto)
                                                <tr>
                                                    <td>{{ $produto->id }}</td>
                                                    <td>{{ $produto->nome }}</td>
                                                </tr>
                                            @endforeach
                                        </tbody>
                                    </table>
                                </td>
                            </tr>
                        @endforeach 
                    </tbody>
                   
                </table>
                <br>
                
                {{ $fornecedores->appends($request)->links('vendor\pagination\semantic-ui') }}

                Exibindo {{ $fornecedores->count() }} fornecedores de {{ $fornecedores->total() }} (de {{ $fornecedores->firstItem() }} a {{ $fornecedores->lastItem() }} )
            </div>
        </div>

    </div>

@endsection