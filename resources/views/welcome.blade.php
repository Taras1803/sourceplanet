<!doctype html>
<html lang="{{ app()->getLocale() }}">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>SourcePlanet</title>
        <link rel="shortcut icon" href="https://cdn2.iconfinder.com/data/icons/flat-seo-web-ikooni/128/flat_seo2-37-128.png">
        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Raleway:100,600" rel="stylesheet" type="text/css">
        <!-- Styles -->
        <style>
            body{
                color: #fff;
                background-color:#f0f0f0;
                font-family:helvetica;
                background:url('http://clevertechie.com/img/bnet-bg.jpg') #0f2439 no-repeat center top;
            }
            #one {
                width: 100px;
                height: 100px;
                background: orange;
            }
            .t1 {
                color: rgb(246, 246, 255);
                font-size:15px;
                font-weight: bold;
                font-style: italic ;
                text-shadow: 2px 2px 0px #000000;
            }
            .full-height {
                height: 100vh;
            }

            .flex-center {
                align-items: center;
                display: flex;
                justify-content: center;
            }

            .position-ref {
                position: relative;
            }

            .top-right {
                position: absolute;
                right: 10px;
                top: 18px;
            }

            .content {
                text-align: center;
            }

            .title {
                font-size: 54px;
            }

            .links > a {
                color: #636b6f;
                padding: 0 25px;
                font-size: 12px;
                font-weight: 600;
                letter-spacing: .1rem;
                text-decoration: none;
                text-transform: uppercase;
            }

            .m-b-md {
                margin-bottom: 30px;
            }
        </style>
    </head>
    <body>

        <div class=" position-ref full-height">
            @if (Route::has('login'))
                <div class="top-right links">
                    @section('sidebar')
                        <a href="test/1">Пройти тестирование</a>
                    @show
                        <a href="createtask">Добавить задачу</a>
                    @auth
                        <a href="{{ url('/home') }}">Home</a>
                    @else
                        <a href="{{ route('login') }}">Login</a>
                        <a href="{{ route('register') }}">Register</a>
                    @endauth
                </div>
                @yield('content')
            @endif
        </div>
    </body>
</html>

