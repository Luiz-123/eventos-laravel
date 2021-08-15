@extends('layouts.main')

@section('title', 'HDC Events')

@section('content')
        <h1>Algum título</h1>
        <img src="/img/banner.jpg" alt="Banner">

        @if(10 > 5)
            <p>O condição é true</p>
        @endif

        <p>{{ $nome }}</p>

        @if($nome == "Claudio")
            <p>O nome é Claudio</p>
        @elseif($nome == "Luiz")
            <p>O nome é {{ $nome }}, e tem {{ $idade }} anos, sua profissão é {{ $profissao }}</p>
        @else
            <p>O nome é Souza</p>
        @endif

        @for($i=0; $i < count($arr); $i++)
            <p>{{ $arr[$i] }} - {{ $i }}</p>
            @if($i == 2)
                <p>O i é 2</p>
            @endif
        @endfor

        @foreach($nomes as $nomePrint)
            <p>{{ $loop->index }}</p>
            <p>{{ $nomePrint }}</p>                       
        @endforeach

        @php
            $name = "João";
            echo $name;
        @endphp

        {{-- Este comentário é do Blade --}}
@endsection
    