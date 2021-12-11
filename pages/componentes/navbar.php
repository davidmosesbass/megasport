<!--Navbar-->
<nav class="navbar navbar-expand-lg sticky-top bg-light">
    <div class="container">
        <a class="navbar-brand" id="logo" href="index.php"><img src="img/mg-01.png" alt="" width="180px"
                height="80px"></a>
        <button class="navbar-toggler btn-toggler" type="button" data-bs-toggle="collapse"
            data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
            aria-label="Toggle navigation">
            <i class="fas fa-bars"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav m-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link text-dark active" href="index.php">Inicio</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle text-dark" href="#" id="navbarDropdown" role="button"
                        data-bs-toggle="dropdown" aria-expanded="false">
                        Productos
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="productosHombre.php">Hombre</a></li>
                        <li><a class="dropdown-item" href="productosDama.php">Mujer</a></li>
                        <li><a class="dropdown-item" href="productosNiños.php">Niños</a></li>
                    </ul>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle text-dark" href="#" id="navbarDropdown" role="button"
                        data-bs-toggle="dropdown" aria-expanded="false">
                        Quienes Somos
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="index.php#mivi">Misión</a></li>
                        <li><a class="dropdown-item" href="index.php#mivi">Visión</a></li>
                        <li><a class="dropdown-item" href="index.php#valores">Valores</a></li>
                    </ul>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-dark" href="#contacto">Contacto</a>
                </li>
            </ul>
            <form class="nav-item">
                <input class="px-5 search" type="search" placeholder="Buscar" aria-label="Search">
                <button class="btn0" type="submit"><i class="fas fa-search"></i></button>
            </form>
            <?php
              if(isset($_SESSION['id_usuario'])==false){
            ?>
            <ul class="navbar-nav  mb-lg-0 p1">
                <li class="nav-item dropdown">
                    <a class="nav-link icon1" data-toggle="dropdown" href="#">
                        <i class="fas fa-shopping-cart "></i>
                        <span class="badge badge-danger navbar-badge">3</span>
                    </a>
                    <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
                        <a href="#" class="dropdown-item">
                            <!-- Message Start -->
                            <div class="media">
                                <img src="../../dist/img/user1-128x128.jpg" alt="User Avatar"
                                    class="img-size-50 mr-3 img-circle">
                                <div class="media-body">
                                    <h3 class="dropdown-item-title">
                                        Brad Diesel
                                        <span class="float-right text-sm text-danger"><i class="fas fa-star"></i></span>
                                    </h3>
                                    <p class="text-sm">Call me whenever you can...</p>
                                    <p class="text-sm text-muted"><i class="far fa-clock mr-1"></i> 4 Hours Ago</p>
                                </div>
                            </div>
                            <!-- Message End -->
                        </a>
                        <div class="dropdown-divider"></div>
                        <a href="#" class="dropdown-item">
                            <!-- Message Start -->
                            <div class="media">
                                <img src="../../dist/img/user8-128x128.jpg" alt="User Avatar"
                                    class="img-size-50 img-circle mr-3">
                                <div class="media-body">
                                    <h3 class="dropdown-item-title">
                                        John Pierce
                                        <span class="float-right text-sm text-muted"><i class="fas fa-star"></i></span>
                                    </h3>
                                    <p class="text-sm">I got your message bro</p>
                                    <p class="text-sm text-muted"><i class="far fa-clock mr-1"></i> 4 Hours Ago</p>
                                </div>
                            </div>
                            <!-- Message End -->
                        </a>
                        <div class="dropdown-divider"></div>
                        <a href="#" class="dropdown-item">
                            <!-- Message Start -->
                            <div class="media">
                                <img src="../../dist/img/user3-128x128.jpg" alt="User Avatar"
                                    class="img-size-50 img-circle mr-3">
                                <div class="media-body">
                                    <h3 class="dropdown-item-title">
                                        Nora Silvester
                                        <span class="float-right text-sm text-warning"><i
                                                class="fas fa-star"></i></span>
                                    </h3>
                                    <p class="text-sm">The subject goes here</p>
                                    <p class="text-sm text-muted"><i class="far fa-clock mr-1"></i> 4 Hours Ago</p>
                                </div>
                            </div>
                            <!-- Message End -->
                        </a>
                        <div class="dropdown-divider"></div>
                        <a href="#" class="dropdown-item dropdown-footer">See All Messages</a>
                    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link icon1 text-blue" href="./pages/iniciarSesion.php">
                        <i class="fas fa-user"></i>
                    </a>
                </li>
            </ul>
            <?php
              }else{
            ?>

            <ul class="navbar-nav  mb-lg-0 p1">
                <!-- este es configuracion de perfil cliente -->
                <li class="nav-item">
                    <a class="nav-link icon1 text-muted" href="logica/cerrarSesion.php">
                        <i class="fas fa-cogs"></i>
                    </a>
                </li>
                <!-- este es bolsa de dinero o carrito de cliente -->
                <li class="nav-item">
                    <a class="nav-link icon1 text-danger" href="logica/cerrarSesion.php"><i
                            class="fab fa-shopify"></i></a>
                </li>
                <!-- este es cerrar sesion de perfil -->
                <li class="nav-item">
                    <a class="nav-link icon1 text-blue" href="logica/cerrarSesion.php"><i
                            class="fas fa-sign-out-alt"></i></a>
                </li>

            </ul>

            <?php
              }    
            ?>


            <!-- <li class="nav-item ">
                <a class="nav-link " href="carrito.html"><i class="fas fa-user fas-fa"></i></a>
            </li> -->
        </div>
    </div>
</nav>