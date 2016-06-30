<%@page import="accesodato.Coneccion"%>
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

        <title>Editar Habilidades</title>

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

                    <div class="panel-body">
                        <h1>Habilidades</h1>
                        <p class="lead">                 <!Cuerpo >
                        <div class="">


                        </div>
                        <%
                            int id = Integer.parseInt(request.getParameter("editar4"));
                            Coneccion con = new Coneccion();
                            con.setConsulta("select * from habilidades where habilidad_id='" + id + "'");
                        %>
                        <div class="panel-body">
                            <% while (con.getResultado().next()) {  %>

                            <form method="POST" action="../ServletHabilidad?editar4=si">


                                <!-- OJO CON EL CAMPO READONLY QUE ES ENVIADO POR EL FORMULARIO PARA ACTUALIZAR -->
                                
                                <div class="form-group">
                                    <label for="pais_id">ID</label> 
                                    <input type="text" class="form-control" readonly="true" value='<% out.println("" + con.getResultado().getString("habilidad_id")); %>' name="id">
                                    <label for="nombre">Tipo </label>
                                    <input type="text" class="form-control" name="nombre" value='<% out.println("" + con.getResultado().getString("nombre")); %>' id="nombre" placeholder="Ingresar Nombre">
                                </div>


                                <td><input type="submit" class="btn btn-default" name="editar4" value="Actualizar"></td>
                            </form>
                            <% }%> 

                        </div>

                    </div>
                    </p>

                    <p class="lead">

                        <a href="index.jsp" class="btn btn-primary">Volver</a>

                    </p>
                </div>

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
