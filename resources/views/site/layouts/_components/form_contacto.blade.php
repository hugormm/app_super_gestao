{{ $slot }}

<form action={{ route('site.contactos')}} method="POST">
    @csrf
    <input name="nome" value="{{ old('nome') }}" type="text" placeholder="Nome" class="{{ $classe }}">
    @if($errors->has('nome'))
        {{ $errors->first('nome') }}
    @endif
    <br>
    <input name="telefone" value="{{ old('telefone') }}" type="text" placeholder="Telefone" class="{{ $classe }}">
    {{ $errors->has('telefone') ? $errors->first('telefone') : '' }}
    <br>
    <input name="email" value="{{ old('email') }}" type="text" placeholder="E-mail" class="{{ $classe }}">
    {{ $errors->has('email') ? $errors->first('email') : '' }}
    <br>

    <select name="motivo_contactos_id" class="{{ $classe }}">
        <option value="">Qual o motivo do contato?</option>

        @foreach ($motivo_contactos as $key => $motivo_contacto)
            <option value="{{ $motivo_contacto->id }}" {{ old('motivo_contactos_id') == $motivo_contacto->id ? 'selected' : '' }} >{{ $motivo_contacto->motivo_contacto }}</option>
        @endforeach
        
    </select>
    {{ $errors->has('motivo_contactos_id') ? $errors->first('motivo_contactos_id') : '' }}
    <br>
    <textarea name="mensagem" class="{{ $classe }}">
        @if(old('mensagem') != '')
            {{ old('mensagem') }}
        @else
            Preencha aqui a sua mensagem
        @endif
        </textarea>
    <br>
    {{ $errors->has('mensagem') ? $errors->first('mensagem') : '' }}
    <button type="submit" class="{{ $classe }}">ENVIAR</button>
</form>

@if($errors->any())
    <div style="position:absolute; top:0px; left:0px; width:100%; text-align:center; background-color:red;">
        @foreach ($errors->all() as $erro)
            {{ $erro }}
            <br>
        @endforeach
    </div>
@endif