<%-- 
    Document   : newjsp
    Created on : 28-06-2016, 20:23:50
    Author     : emanuel
--%>

<%@page import="java.io.File"%>
<%@page import="accesodato.Coneccion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        try{
            Coneccion Conexion=Coneccion.getInstance();
            File reportFile=new File(application.getRealPath("//reportes//report1.jasper"));
            byte[] bytes=JasperRunManager.runReportToPdf(reportFile.getPath(),null,Conexion.getConeccion());
            response.setContentType("application/pdf");
            response.setContentLength(bytes.length);
            ServletOutputStream ouputStream=response.getOutputStream();
            ouputStream.write(bytes,0,bytes.length);
            ouputStream.flush();
            ouputStream.close();
            
        }catch(Exception ex){
            out.println(""+ex.getMessage());
        }
        
        %>
    </body>
</html>
