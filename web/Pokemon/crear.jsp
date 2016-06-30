<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="icon" href="../../favicon.ico">

        <title>Pokemones</title>

        <!-- Bootstrap core CSS -->
        <link href="../template/css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="../template/css/cover.css" rel="stylesheet">
    </head>
    <body>

        <div class="site-wrapper">

            <div class="site-wrapper-inner">

                <div class="cover-container">

                    <div class="masthead clearfix">
                        <div class="inner">
                            <h3 class="masthead-brand">Centro Pokemon</h3>
                            <nav>
                                <ul class="nav masthead-nav">
                                    <li class="active"><a href="../index.html">Inicio</a></li>
                                    <li><a href="../Usuario/index.jsp">usuario</a></li>
                                    <li><a href="../Pokemon/index.jsp">Pokemon</a></li>
                                    <li><a href="../Habilidades/index.jsp">Habilidad</a></li>
                                    <li><a href="../Tipo/index.jsp">Tipos</a></li>
                                    <li><a href="../Ciudades/index.jsp">Ciudades</a></li>
                                    <li><a href="../paises/index.jsp">paises</a></li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                    <br>
                    <br>
                    <br>
                    <form method="POST" action="../ServletPokemon">
                        <div class="inner cover">
                            <h1 class="cover-heading">Pokemon</h1>

                            <p class="lead">                 <!Cuerpo >

                            <table class="table table-bordered">


                                <div class="form-group">
                                    <label for="nombre">Pokemon</label>
                                    <input type="text" class="form-control" name="nombre" id="nombre" placeholder="Ingresar Nombre">
                                </div>
                                <div class="form-group">
                                    <label for="nombre">Numero</label>
                                    <input type="text" class="form-control" name="numero" id="nombre" placeholder="Ingresar Numero">
                                </div>
                                <div class="form-group">
                                    <label for="nombre">Fecha Nacimiento</label>
                                    <input type="date" class="form-control" name="fecha" id="nombre" placeholder="Ingresar fecha">
                                </div>
                                <div class="form-group">
                                    <label for="nombre">Tipo</label>
                                    <input type="text" class="form-control" name="tipo" id="nombre" placeholder="Ingresar tipo valor numerico">
                                </div>
                                <div class="form-group">
                                    <label for="nombre">Creado Por</label>
                                    <input type="text" class="form-control" name="creado" id="nombre" placeholder="Ingresar Creado">
                                </div>

                                <div class="form-group">
                                    <label for="nombre">Ciudad id</label>
                                    <input type="text" class="form-control" name="ciudad" id="nombre" placeholder="Ingresar Nombre">
                                </div>


                                <input type="submit" class="btn btn-default" name="guardar2" value="guardar">
                                <a href="index.jsp" class="btn btn-primary">Volver</a>
                            </table>
                            </p>

                            <p class="lead">

                                
                            </p>
                        </div>
                    </form>

                    <div class="mastfoot">
                        <div class="inner">
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Bootstrap core JavaScript
        ================================================== -->
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script src="../template/js/bootstrap.min.js"></script>

    </body>
</html>