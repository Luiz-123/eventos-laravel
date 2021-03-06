@extends('layouts.main')

@section('title', 'Editando...')

@section('content')  
    <div  class="col-md-6 offset-md-3 img-preview">
        <h1>Editando: {{ $event->title }}</h1>
        <img src="/img/events/{{ $event->image }}" class="img-fluid"  alt="{{ $event->title }}">
    </div>

    <div id="event-create-container" class="col-md-6 offset-md-3">        
        <form action="/events/update/{{ $event->id }}" method="POST" enctype="multipart/form-data">
        @csrf
        @method('PUT')
            <div class="form-group">
                <label for="title">Imagem do evento</label>
                <input type="file" class="from-control-file" id="image" name="image">                
            </div>
            <div class="form-group">
                <label for="title">Evento</label>
                <input type="text" class="form-control" id="title" name="title" placeholder="Nome do evento" value="{{ $event->title }}">
            </div>
            <div class="form-group">
                <label for="date">Data</label>
                <input type="date" class="form-control" id="date" name="date" value="{{ $event->date->format('Y-m-d') }}">
            </div>
            <div class="form-group">
                <label for="title">Cidade</label>
                <input type="text" class="form-control" id="city" name="city" placeholder="Local do evento" value="{{ $event->city }}">
            </div>
            <div class="form-group">
                <label for="title">Evento Privado</label>
                <select name="private" id="private" class="form-control">
                    <option value="0">Não</option>
                    <option value="1" {{ $event->private == 1 ? "selected='selected'" : "" }}>Sim</option>
                </select>
            </div>
            <div class="form-group">
                <label for="title">Descrição</label>
                <textarea name="description" rows="10" id="description" class="form-control" placeholder="Atividades do evento">{{ $event->description }}</textarea>
            </div>
            <div class="form-group">
                <label for="title">Adicione items de infraestrutura</label>   
                <div class="form-group">
                    <input type="checkbox" name="items[]" value="Tendas"> Tendas
                </div>    
                <div class="form-group">
                    <input type="checkbox" name="items[]" value="Palco"> Palco
                </div>      
                <div class="form-group">
                    <input type="checkbox" name="items[]" value="Open Foods"> Open Foods
                </div>      
                <div class="form-group">
                    <input type="checkbox" name="items[]" value="Drinks"> Drinks
                </div>  
                <div class="form-group">
                    <input type="checkbox" name="items[]" value="Park"> Park
                </div>    
                <div class="form-group">
                    <input type="checkbox" name="items[]" value="Souvenir"> Souvenir
                </div>    
            </div>
            <input type="submit" class="btn btn-primary"value="Editar Evento">

        </form>
    </div>

@endsection