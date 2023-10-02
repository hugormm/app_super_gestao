@extends('app.layouts.basico')

@section('titulo', 'Cliente')
@section('conteudo')

    <div class="conteudo-pagina">

        <div class="titulo-pagina-2">
            <p>Cliente</p>
        </div>

        <div class="menu">
            <ul>
                <li><a href="{{ route('cliente.index') }}">Voltar</a></li>
            </ul>
        </div>

        <div class="informacao-pagina">
            <div style="width: 30%; margin-left: auto; margin-right: auto;">
                <table border="1" width="100%" style="text-align:left;">
                    <tr>
                        <th>Id:</th>
                        <th>{{ $cliente->id }}</th>
                    </tr>
                    <tr>
                        <th>Nome:</th>
                        <th>{{ $cliente->nome }}</th>
                    </tr>
                </table>
            </div>
        </div>

    </div>

@endsection