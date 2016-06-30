<%@page import="java.io.File"%>
<%@page import="accesodato.Coneccion" %>
<%@page import="net.sf.jasperreports.engine.*" %>

<%@page import="java.util.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Reporte Lista Usuarios</title>
    </head>
    <body>
        <%
            try {
                Coneccion con = new Coneccion();
                File reportFile = new File(application.getRealPath("//reportes//lishabilidades.jasper"));
                byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), null, con.getConexion());
                response.setContentType("application/pdf");
                response.setContentLength(bytes.length);
                ServletOutputStream outputStream=response.getOutputStream();
                outputStream.write(bytes,0,bytes.length);
                outputStream.flush();
                outputStream.close();
            } catch (Exception ex) {
                out.println("ERROR DE CONEXION AL GENERAR EL REPORTE! :D");
            }

        %>
    </body>
</html>