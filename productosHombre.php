<!DOCTYPE html>
<html lang="en">
<?php
    session_start();
  ?>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MegaSport</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
    <link rel="stylesheet" href="css/index.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Luckiest+Guy&display=swap" rel="stylesheet">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="admin/vista/plugins/fontawesome-free/css/all.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <!-- Tempusdominus Bootstrap 4 -->
    <link rel="stylesheet" href="admin/vista/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
    <!-- iCheck -->
    <link rel="stylesheet" href="admin/vista/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
    <!-- JQVMap -->
    <link rel="stylesheet" href="admin/vista/plugins/jqvmap/jqvmap.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="admin/vista/dist/css/adminlte.min.css">
    <!-- overlayScrollbars -->
    <link rel="stylesheet" href="admin/vista/plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
    <!-- Daterange picker -->
    <link rel="stylesheet" href="admin/vista/plugins/daterangepicker/daterangepicker.css">
    <!-- summernote -->
    <link rel="stylesheet" href="admin/vista/plugins/summernote/summernote-bs4.min.css">
    <!-- jQuery -->
    <script src="admin/vista/plugins/jquery/jquery.min.js"></script>
    <!-- jQuery UI 1.11.4 -->
    <script src="admin/vista/plugins/jquery-ui/jquery-ui.min.js"></script>
    <!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
    <script>
    $.widget.bridge('uibutton', $.ui.button)
    </script>
    <!-- Bootstrap 4 -->
    <script src="admin/vista/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- ChartJS -->
    <script src="admin/vista/plugins/chart.js/Chart.min.js"></script>
    <!-- Sparkline -->
    <script src="admin/vista/plugins/sparklines/sparkline.js"></script>
    <!-- JQVMap -->
    <script src="admin/vista/plugins/jqvmap/jquery.vmap.min.js"></script>
    <script src="admin/vista/plugins/jqvmap/maps/jquery.vmap.usa.js"></script>
    <!-- jQuery Knob Chart -->
    <script src="admin/vista/plugins/jquery-knob/jquery.knob.min.js"></script>
    <!-- daterangepicker -->
    <script src="admin/vista/plugins/moment/moment.min.js"></script>
    <script src="admin/vista/plugins/daterangepicker/daterangepicker.js"></script>
    <!-- Tempusdominus Bootstrap 4 -->
    <script src="admin/vista/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
    <!-- Summernote -->
    <script src="admin/vista/plugins/summernote/summernote-bs4.min.js"></script>
    <!-- overlayScrollbars -->
    <script src="admin/vista/plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
    <!-- AdminLTE App -->
    <script src="admin/vista/dist/js/adminlte.js"></script>
    <!-- AdminLTE for demo purposes -->
    <script src="admin/vista/dist/js/demo.js"></script>
    <!-- AdminLTE dashboard demo (This is only for demo purposes) -->
    <script src="admin/vista/dist/js/pages/dashboard.js"></script>

    <style>
    /*==================== 
  Footer 
====================== */

    /* Main Footer */
    footer .main-footer {
        padding: 20px 0;
        background: #252525;
    }

    footer ul {
        padding-left: 0;
        list-style: none;
    }

    /* Copy Right Footer */
    .footer-copyright {
        background: #222;
        padding: 5px 0;
    }

    .footer-copyright .logo {
        display: inherit;
    }

    .footer-copyright nav {
        float: right;
        margin-top: 5px;
    }

    .footer-copyright nav ul {
        list-style: none;
        margin: 0;
        padding: 0;
    }

    .footer-copyright nav ul li {
        border-left: 1px solid #505050;
        display: inline-block;
        line-height: 12px;
        margin: 0;
        padding: 0 8px;
    }

    .footer-copyright nav ul li a {
        color: #969696;
    }

    .footer-copyright nav ul li:first-child {
        border: medium none;
        padding-left: 0;
    }

    .footer-copyright p {
        color: #969696;
        margin: 2px 0 0;
    }

    /* Footer Top */
    .footer-top {
        background: #252525;
        padding-bottom: 30px;
        margin-bottom: 30px;
        border-bottom: 3px solid #222;
    }

    /* Footer transparent */
    footer.transparent .footer-top,
    footer.transparent .main-footer {
        background: transparent;
    }

    footer.transparent .footer-copyright {
        background: none repeat scroll 0 0 rgba(0, 0, 0, 0.3);
    }

    /* Footer light */
    footer.light .footer-top {
        background: #f9f9f9;
    }

    footer.light .main-footer {
        background: #f9f9f9;
    }

    footer.light .footer-copyright {
        background: none repeat scroll 0 0 rgba(255, 255, 255, 0.3);
    }

    /* Footer 4 */
    .footer- .logo {
        display: inline-block;
    }

    /*==================== 
  Widgets 
====================== */
    .widget {
        padding: 20px;
        margin-bottom: 40px;
    }

    .widget.widget-last {
        margin-bottom: 0px;
    }

    .widget.no-box {
        padding: 0;
        background-color: transparent;
        margin-bottom: 40px;
        box-shadow: none;
        -webkit-box-shadow: none;
        -moz-box-shadow: none;
        -ms-box-shadow: none;
        -o-box-shadow: none;
    }

    .widget.subscribe p {
        margin-bottom: 18px;
    }

    .widget li a {
        color: #ff8d1e;
    }

    .widget li a:hover {
        color: #4b92dc;
    }

    .widget-title {
        margin-bottom: 20px;
    }

    .widget-title span {
        background: #839FAD none repeat scroll 0 0;
        display: block;
        height: 1px;
        margin-top: 25px;
        position: relative;
        width: 20%;
    }

    .widget-title span::after {
        background: inherit;
        content: "";
        height: inherit;
        position: absolute;
        top: -4px;
        width: 50%;
    }

    .widget-title.text-center span,
    .widget-title.text-center span::after {
        margin-left: auto;
        margin-right: auto;
        left: 0;
        right: 0;
    }

    .widget .badge {
        float: right;
        background: #7f7f7f;
    }

    .typo-light h1,
    .typo-light h2,
    .typo-light h3,
    .typo-light h4,
    .typo-light h5,
    .typo-light h6,
    .typo-light p,
    .typo-light div,
    .typo-light span,
    .typo-light small {
        color: #fff;
    }

    ul.social-footer2 {
        margin: 0;
        padding: 0;
        width: auto;
    }

    ul.social-footer2 li {
        display: inline-block;
        padding: 0;
    }

    ul.social-footer2 li a:hover {
        background-color: #ff8d1e;
    }

    ul.social-footer2 li a {
        display: block;
        height: 30px;
        width: 30px;
        text-align: center;
    }

    .whatsapp {
        position: fixed;
        width: 60px;
        height: 60px;
        bottom: 40px;
        right: 40px;
        background-color: #25d366;
        color: #FFF;
        border-radius: 50px;
        text-align: center;
        font-size: 30px;
        z-index: 100;
    }

    .whatsapp-icon {
        margin-top: 13px;
    }

    .card1 {
        border: none;
        outline: none;
        border-radius: 20px;
        transition: transform .3s;
    }

    .card1:hover {
        transform: translateY(-15px);
        transition: transform .3s;
    }

    .star {
        color: #fbc02c;
    }
    </style>

</head>

<body>
    <?php
    include "pages/componentes/navbar.php"
    ?>


    <!--Seccion de prendas-->
    <section>
        <div class="text-center mt-5 h2">Productos Para Caballero</div>
        <div class="container mb-5 ">
            <div class="row">
                <?php

                  
include_once "logica/conexion.php";
$sql = "SELECT * FROM producto WHERE categoria='hombre'" ;
$resultado = $conexion->query($sql);
if($resultado->num_rows > 0){
    while($row = $resultado->fetch_assoc()){
        ?>

                <!-- Card  -->
                <div class="col-md-4">
                    <div class="card card1 mt-3 shadow">
                        <div class="car1 align-items-center p-2 text-center">
                            <img src="<?php  echo substr($row["img"], 1)?>" alt="" class="mt-3 rounded mb-3"
                                width="150">
                            <h5><?php echo $row["descripcion"] ?></h5>

                            <!-- {/* Card info */} -->
                            <div class="cost mt-3 text-dark">
                                <span>$ <?php  echo $row["precio_venta"]?></span>
                                <div class="star mt-3 align-items-center">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                            </div>
                        </div>

                        <div class="p-3 car text-center text-white mt-3 cursor">
                            <button type="button" class="btn btn-danger text-uppercase" id="agregarCarrito"><i
                                    class="ml-2 fa fa-cart-plus"></i>Agregar al carrito</button>
                        </div>
                    </div>
                </div>
                <?php
    }
}
?>
            </div>
        </div>
    </section>





    <?php
    include "pages/componentes/footer.php"
    ?>

    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.6.0/mdb.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous">
    </script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.7.1/gsap.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="js/index.js"></script>
</body>
<!-- MDB -->


</html>