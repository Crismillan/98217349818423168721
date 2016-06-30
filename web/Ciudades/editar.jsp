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

        <title>Cover Template for Bootstrap</title>

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
                        <h1 class="table table-bordered">Ciudades</h1>
                        <p class="lead">                 <!Cuerpo >
                        <div class="">


                        </div>
                        <%
                        int id = Integer.parseInt(request.getParameter("actualizar"));
                        Coneccion con = new Coneccion();
                        String pais = "";
                        con.setConsulta("select * from ciudades where ciudad_id ='" + id + "'");
                    %>
                    <div class="panel-body">
                        <% while (con.getResultado().next()) {
                                pais = con.getResultado().getString("pais_id");
                        %>

                        <form method="POST" action="../ServletCiudad?actualizar=si">
                            <div class="form-group">
                                <label for="ciudad_id">ID</label>
                                <input type="text" readonly="true" id="ciudad_id" name="ciudad_id" class="form-control" value='<% out.println("" + con.getResultado().getString("ciudad_id")); %>'>
                            </div>
                            <div class="form-group">    
                                <label for="tipo"> Nombre </label>
                                <input type="text" class="form-control" name="nombre" value='<% out.println("" + con.getResultado().getString("nombre")); %>' id="nombre" placeholder="Ingresar nombre">
                            </div>
                            <div class="form-group">    
                                <label for="tipo">Creado</label>
                                <input type="text" class="form-control" name="creado" value='<% out.println("" + con.getResultado().getString("nombre")); %>' id="nombre" placeholder="Ingresar nombre">
                            </div>
                            <% }%>
                            <div class="form-group">
                                <label for="pais_id"> Pais </label>
                                <select name="pais_id" id="pais_id" class="form-control">
                                    <% con.setConsulta("select * from paises");%>
                                    <%while (con.getResultado().next()) {
                                            if (pais.equals(con.getResultado().getString("pais_id"))) {
                                                out.println("<option value='" + con.getResultado().getString("pais_id") + "' selected>" + con.getResultado().getString("nombre") + "</option>");
                                            } else {
                                                out.println("<option value='" + con.getResultado().getString("pais_id") + "'>" + con.getResultado().getString("nombre") + "</option>");
                                            }
                                        }%>
                                </select>
                            </div>
                            <button type="submit" name="actualizar" class="btn btn-default">Actualizar</button>
                        </form>

                                </div>

                        </div>
                    

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