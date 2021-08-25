@extends('layouts.main')

@section('title', 'Criar Evento')

@section('content')  
    <div id="search-container-create" class="col-md-12">
        <h1></h1>        
    </div>

    <div id="event-create-container" class="col-md-6 offset-md-3">
        <h1>Crie o seu evento</h1>
        <form action="/events" method="POST" enctype="multipart/form-data">
        @csrf
            <div class="form-group">
                <label for="title">Imagem do evento</label>
                <input type="file" class="from-control-file" id="image" name="image">
            </div>
            <div class="form-group">
                <label for="title">Evento</label>
                <input type="text" class="form-control" id="title" name="title" placeholder="Nome do evento">
            </div>
            <div class="form-group">
                <label for="date">Data</label>
                <input type="date" class="form-control" id="date" name="date">
            </div>
            <div class="form-group">
                <label for="title">Cidade</label>
                <input type="text" class="form-control" id="city" name="city" placeholder="Local do evento">
            </div>
            <div class="form-group">
                <label for="title">Evento Privado</label>
                <select name="private" id="private" class="form-control">
                    <option value="0">Não</option>
                    <option value="1">Sim</option>
                </select>
            </div>
            <div class="form-group">
                <label for="title">Descrição</label>
                <textarea name="description" rows="10" id="description" class="form-control" placeholder="Atividades do evento"></textarea>
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
            <input type="submit" class="btn btn-primary"value="Criar Evento">

        </form>
    </div>

@endsection