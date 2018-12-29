<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- CSRF Token -->
        <meta name="csrf-token" content="{{ csrf_token() }}">

        <title>{{ config('app.name', 'Alburquerque Monumental') }}</title>

        <!-- Scripts -->
       <!-- <script src="{{ asset('js/app.js') }}" defer></script> -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
       <!-- <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDH6lnTghb4eej6jFZMlzOW4267zCsef3U&libraries==places"></script> -->
       
        
         <script>
             // variable del mapa
             var map;
             // variable marcador
             var marker;
             // variable array de los marcadores
             var markers = [<?php echo json_encode($monumentos) ?>];
             
             var misCookies;
    function initMap() {
        map = new google.maps.Map(document.getElementById('map'), {
          center: {lat: 39.2326600, lng: -6.9466500},    
          zoom: 10
        });
     
     
     
      for (var i = 0; i < markers[0].length; i+=1) {
       
        console.log(markers[0][i]);
        
     
       marker = new google.maps.Marker({
        map: map,
        draggable: false,
        title: markers[0][i].name, 
        animation: google.maps.Animation.DROP,
        position: new google.maps.LatLng(markers[0][i].lat,markers[0][i].long)

      });
      
       
    
       
      
      
      }
       }
      
      function visitar(monumento){
          alert(monumento);
          var d = new Date();
          document.cookie = 'visitado' + "="+ monumento + ";" ;
          // misCookies = document.cookie;
          d.setTime(d.getTime() + (2 * 24 * 60 * 60 * 1000));
          var expires = "expires=" + d.toUTCString();
          document.cookie = monumento + "=" + 'visitado' + "; " + expires;
          colorCookies();
      }
      
      function colorCookies(){
          alert(misCookies);
          
        //     for (var i = 0; misCookies.length; i+=1){
       //if (marker.getOwnPropertyDescriptor('name') === misCookies[i] ) {
             
//}     
  //   }
      }

         </script>



       


        <!-- Fonts -->
        <link rel="dns-prefetch" href="//fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet" type="text/css">

        <!-- Styles -->
        <link href="{{ asset('css/main.css') }}" rel="stylesheet">
        <link href="{{ asset('css/app.css') }}" rel="stylesheet">
        
    </head>
    <body>
        <div id="app">
            <nav class="navbar navbar-expand-md navbar-light navbar-laravel">
                <div class="container">
                    <a class="navbar-brand" href="{{ url('/') }}">
                        {{ config('app.name', 'Laravel') }}
                    </a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="{{ __('Toggle navigation') }}">
                        <span class="navbar-toggler-icon"></span>
                    </button>

                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <!-- Left Side Of Navbar -->
                        <ul class="navbar-nav mr-auto">

                            </ul>

                            <!-- Right Side Of Navbar -->
                            <ul class="navbar-nav ml-auto">
                                <!-- Authentication Links -->
                                @guest
                                <li class="nav-item">
                                    <a class="nav-link" href="{{ route('login') }}">{{ __('Login') }}</a>
                                </li>
                                @if (Route::has('register'))
                                <li class="nav-item">
                                    <a class="nav-link" href="{{ route('register') }}">{{ __('Register') }}</a>
                                </li>
                                @endif
                                @else
                                <li class="nav-item dropdown">
                                    <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                                        {{ Auth::user()->name }} <span class="caret"></span>
                                    </a>

                                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                                        <a class="dropdown-item" href="{{ route('logout') }}"
                                           onclick="event.preventDefault();
                                         document.getElementById('logout-form').submit();">
                                            {{ __('Logout') }}
                                        </a>

                                        <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                            @csrf
                                            </form>
                                    </div>
                                </li>
                                @endguest
                            </ul>
                    </div>
                </div>
            </nav>

            <main class="py-4">
                @yield('content')
                 <script async="" defer="" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDH6lnTghb4eej6jFZMlzOW4267zCsef3U&callback=initMap"></script>
            </main>
        </div>
    </body>



</html>
