<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="shortcut icon" href="/img/favicon.png" type="image/x-icon">

        <title>@yield('title')</title>

        <!-- Fonte do Google -->
        <link href="https://fonts.googleapis.com/css2?family=Roboto" rel="stylesheet"> 
        
        <!-- Css do Bootstrap -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">        

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

        <!--
            <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
        -->
        
        
        <!-- Css da Aplicação -->
        <link rel="stylesheet" href="/css/styles.css"></link>
        <script src="/js/script.js"></script>

    </head>
    <body>       
    <header> 
        <nav class="navbar navbar-expand-lg navbar-light">
            <div class="container-fluid">
                <a href="/" id="navbarimg">
                    <img src="/img/sigma-logo.png" alt="HDC Events">
                </a>

                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbar" aria-controls="navbar" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
            </div>

            <div class="collapse navbar-collapse" id="navbar">
            
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a href="/" class="nav-link">Eventos</a>
                    </li>
                    <li class="nav-item">
                        <a href="/events/create" class="nav-link">Criar</a>
                    </li>
                    
                    @auth
                        <li class="nav-item">
                            <a href="/dashboard" class="nav-link">Dashboard</a>
                        </li>
                        <li class="nav-item">
                            <form action="/logout" method="POST">
                                @csrf
                                <a href="/logout" 
                                    class="nav-link" 
                                    onclick="event.preventDefault();
                                            this.closest('form').submit();"
                                >Sair</a>
                            </form>
                        </li>
                    @endauth

                    @guest
                        <li class="nav-item">
                            <a href="/login" class="nav-link">Entrar</a>
                        </li>
                        <li class="nav-item">
                            <a href="/register" class="nav-link">Cadastrar</a>
                        </li>                       
                    @endguest                
                </ul>            
            </div>        
        </nav>

<!--
        <nav class="navbar navbar-expand-lg navbar-light">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
            <div class="collapse navbar-collapse" id="navbar">
                <a href="/" class="navbar-brand">
                    <img src="/img/sigma-logo.png" alt="HDC Events">
                </a>
                <ul class="navbar-nav">
                    <li class="navbar-item">
                        <a href="/" class="nav-link">Eventos</a>
                    </li>
                    <li class="navbar-item">
                        <a href="/events/create" class="nav-link">Criar</a>
                    </li>
                    @auth
                        <li class="navbar-item">
                            <a href="/dashboard" class="nav-link">Dashboard</a>
                        </li>   
                        <li class="navbar-item">
                            <form action="/logout" method="POST">
                                @csrf
                                <a href="/logout" 
                                    class="nav-link" 
                                    onclick="event.preventDefault();
                                            this.closest('form').submit();"
                                >Sair</a>
                            </form>
                        </li>                     
                    @endauth

                    @guest
                        <li class="navbar-item">
                            <a href="/login" class="nav-link">Entrar</a>
                        </li>
                        <li class="navbar-item">
                            <a href="/register" class="nav-link">Cadastrar</a>
                        </li>
                    @endguest
                </ul>
            </div>        
        </nav>
-->
    </header> 

    <main>
        <div class="container-fluid">
            <div class="row">
                @if(session('msg'))
                    <p class="msg">{{ session('msg') }}</p>
                @endif

                @yield('content')
            </div>
        </div>
    </main>    
    
       <footer>            
            <p>Sigma &copy; 2021</p>
       </footer>
       <script src="https://unpkg.com/ionicons@5.1.2/dist/ionicons.js"></script>
    </body>
</html>
