<%-- 
    Document   : Perfil
    Created on : 14-abr-2020, 20:06:39
    Author     : SAN MIGUEL
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Perfil</title>    
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="Shortcut Icon" type="image/x-icon" href="assets/icons/book.ico" />
    <script src="js/sweet-alert.min.js"></script>
    <link rel="stylesheet" href="css/sweet-alert.css">
    <link rel="stylesheet" href="css/material-design-iconic-font.min.css">
    <link rel="stylesheet" href="css/normalize.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/jquery.mCustomScrollbar.css">
    <link rel="stylesheet" href="css/style.css">
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="js/jquery-1.11.2.min.js"><\/script>')</script>
    <script src="js/modernizr.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
    <script src="js/main.js"></script>
    <script src="js/Devolver.js" type="text/javascript"></script>
    <script src="js/EliminarPrueba.js"></script>
        <title>JSP Page</title>
        
        
    </head>
    <body>        
       <div class="container">
            <div class="page-header">
              <h1 class="all-tittles">Sistema de Ventas <small>Administracion</small></h1>
            </div>
        </div>
        <div class="container-fluid">
            <ul class="nav nav-tabs nav-justified"  style="font-size: 17px;">   
              <li role="presentation" class="active"><a href="Controlador?menu=Perfil&accion=Listar" target="myFrame">Registro de Perfiles</a></li>
              <li role="presentation"><a href="Controlador?menu=Usuario&accion=Listar" target="myFrame">Registro de Usuarios</a></li>
              
            </ul>
        </div>
        <div class="container-fluid"  style="margin: 50px 0;">
            <div class="row">
                <div class="col-xs-12 col-sm-4 col-md-3">
                    <img src="assets/undraw/my_documents.svg" alt="user" class="img-responsive center-box" style="max-width: 200px;">
                </div>
                <div class="col-xs-12 col-sm-8 col-md-8 text-justify lead">
                    Bienvenido a la sección para registrar un nuevo perfil, debes de llenar el siguiente formulario para registrar un perfil
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <div class="row">
                <div class="col-xs-12 lead">
                    <ol class="breadcrumb">
                      <li class="active">Nuevo Perfil</li>
                      <li><a href="listcategory.html">Listado de Perfiles</a></li>
                    </ol>
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <div class="container-flat-form">
                <div class="title-flat-form title-flat-blue">Agregar un nuevo Perfil</div>
                <!--<form autocomplete="off">-->
                <form autocomplete="off" action="Controlador?menu=Perfil" method="POST">
                    <div class="row">
                       <div class="col-xs-12 col-sm-8 col-sm-offset-2">
                           
                           <!--Input text para nombre-->
                            <div class="group-material">
                                <input type="text" value="${perfil.getNombPerfil()}" name="txtperf"  class="material-control tooltips-general" placeholder="Escribe aquí el nombre del perfil"  required=""   maxlength="20" data-toggle="tooltip" data-placement="top" title="Escribe aquí el nombre del perfil">
                                <span class="highlight"></span>
                                <span class="bar"></span>
                                <label>Nombre del Perfil:</label>
                            </div>
                            
                            <p class="text-center">
                                <button type="submit" name="accion" value="Actualizar" class="btn btn-warning" style="margin-right: 20px;"><i class="zmdi zmdi-rotate-left"></i> &nbsp;&nbsp; Actualizar</button>
                                <button type="submit" name="accion" value="Agregar" class="btn btn-success"><i class="zmdi zmdi-floppy"></i> &nbsp;&nbsp; Guardar</button>
                            </p> 
                       </div>
                    </div>
                </form>
            </div>
                                
                                
                 <div class="col-sm-8">
                <div class="card">
                    <div class="card-body">
                        <table class="table table-hover table-responsive">
                            <thead>
                                <tr>
                                    <!--<th>ID</th>-->
                                    <th>TIPO PERFIL</th>                                 
                                    <th>ACCIONES</th>
                                </tr>
                            </thead>
                            <tbody> 
                                <c:forEach var="em" items="${perfiles}">
                                    <tr>
                                      
                                        <td>${em.getNombPerfil()}</td>
                                        
                                        <td>
                                            <a class="btn btn-warning" href="Controlador?menu=Perfil&accion=Editar&id=${em.getId()}">Editar</a>
                                            <a class="btn btn-danger delete-system-button" data-href="Controlador?menu=Perfil&accion=Delete&id=${em.getId()}">Delete</a>
                                        </td>
                                    </tr>
                                </c:forEach>

                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
       
    </body>
</html>
