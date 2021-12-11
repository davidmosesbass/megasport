<?php
include_once "../logica/conexion.php";
?>
<!-- Main Sidebar Container -->
<aside class="main-sidebar sidebar-dark-primary elevation-4">

    <!-- Sidebar -->
    <div class="sidebar">
        <!-- Sidebar user panel (optional) -->
        <div class="user-panel mt-3 pb-3 mb-3 d-flex">
            <i class="fas fa-ruler-vertical text-lg text-info"></i>
            <div class="info">
                <a href="#" class="d-block"><?php echo $_SESSION['usuario'] ?></a>
            </div>
        </div>

        <!-- SidebarSearch Form -->
        <div class="form-inline">
            <div class="input-group" data-widget="sidebar-search">
                <input class="form-control form-control-sidebar" type="search" placeholder="Search" aria-label="Search">
                <div class="input-group-append">
                    <button class="btn btn-sidebar">
                        <i class="fas fa-search fa-fw"></i>
                    </button>
                </div>
            </div>
        </div>

        <!-- Sidebar Menu -->
        <nav class="mt-2">
            <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
                <li class="nav-header">MENU</li>
                <li class="nav-item">
                    <a href="usuarios.php" class="nav-link">
                        <i class="nav-icon fas fa-shopping-cart"></i>
                        <p>
                            Entrada de Productos
                            <span class="badge badge-info right">
                                <!--       $sql = "SELECT count(*) as usr from usuario";
                     $resultado = mysqli_query($conexion,$sql);
                     $resultado = mysqli_fetch_assoc($resultado);
                     echo $resultado['usr'];   -->
                                <?php
                     
                     $sql = "SELECT count(*) as usr from producto";
                     $resultado = mysqli_query($conexion,$sql);
                     $resultado = mysqli_fetch_assoc($resultado);
                     echo $resultado['usr'];
                                  
                     ?>
                            </span>
                        </p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="inventario.php" class="nav-link">
                        <i class="nav-icon fas fa-table"></i>
                        <p>
                            Inventario en el Local
                        </p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="#" class="nav-link">
                        <i class="nav-icon fas fa-chart-pie"></i>
                        <p>
                            Reporte de Productos
                        </p>
                    </a>

                </li>
                <li class="nav-item">
                    <a href="productos.php" class="nav-link">
                        <i class="fas fa-tshirt nav-icon"></i>
                        <p>Productos</p>
                    </a>
                </li>


            </ul>
        </nav>
        <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
</aside>