<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>web programming assignment submissions</title>

    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/bootstrap-theme.min.css">
    <link rel="stylesheet" href="css/templatemo-style.css">

    <link href="https://fonts.googleapis.com/css?family=Kanit:100,200,300,400,500,600,700,800,900" rel="stylesheet">
    <script src="js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
</head>

<body>

    <nav>
        <div class="clickhere">
            <a>ASSIGNMENTS ARE IN HERE<em> --> </em></a>
        </div>
        <div class="menu-icon">
        <span></span>
      </div>
    </nav>

    <div id="video-container">
        <div class="video-overlay"></div>
        <div class="video-content">
            <div class="inner">
              <h1>WEB <em>PROGRAMMING</em></h1>
              <h1>18110050 - Ton Tri Thien</h1>
              <h1>assignment submissions</h1>
            </div>
        </div>
        <video id="bb" autoplay loop>
            <source src="web.mp4" type="video/mp4"/>
            <script>
                var video = document.currentScript.parentElement;
                video.volume = 0.1;
            </script>
        </video>
    </div>

    <section class="overlay-menu">
      <div class="container">
        <div class="row">
          <div class="main-menu">
              <ul>

                  <li>
                      <a href="ass01_index.jsp">ASSIGNMENT 01</a>
                  </li>
                  <li>
                      <a href="ass02_index.jsp">ASSIGNMENT 02</a>
                  </li>
                  <li>
                      <a href="ass02.2_index.jsp">ASSIGNMENT 02.2</a>
                  </li>
                  <li>
                      <a href="ass03_index.jsp">ASSIGNMENT 03</a>
                  </li>
                  <li>
                      <a href="ass04_index.jsp">ASSIGNMENT 04</a>
                  </li>
                  <li>
                      <a href="ass05_index.jsp">ASSIGNMENT 05</a>
                  </li>
    
              </ul>
          </div>
        </div>
      </div>
    </section>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="js/vendor/jquery-1.11.2.min.js"><\/script>')</script>

    <script src="js/vendor/bootstrap.min.js"></script>
    
    <script src="js/plugins.js"></script>
    <script src="js/main.js"></script>

    
</body>
</html>
