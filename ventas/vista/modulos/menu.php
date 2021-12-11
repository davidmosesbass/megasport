 <!-- Main Sidebar Container -->
 <aside class="main-sidebar sidebar-dark-primary elevation-4">

     <!-- Sidebar -->
     <div class="sidebar">
         <!-- Sidebar user panel (optional) -->
         <div class="user-panel mt-3 pb-3 mb-3 d-flex">
             <div class="image">
                 <i class="fab fa-viacoin text-success text-lg"></i>
             </div>
             <div class="info">
                 <a href="#" class="d-block"><?php echo $_SESSION['usuario'] ?></a>
             </div>
         </div>

         <!-- SidebarSearch Form -->
         <div class="form-inline">
             <div class="input-group" data-widget="sidebar-search">
                 <input class="form-control form-control-sidebar" type="search" placeholder="Search"
                     aria-label="Search">
                 <div class="input-group-append">
                     <button class="btn btn-sidebar">
                         <i class="fas fa-search fa-fw"></i>
                     </button>
                 </div>
             </div>
         </div>

         <!-- Sidebar Menu -->
         <nav class="mt-2">
             <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu"
                 data-accordion="false">
                 <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
                 <li class="nav-header">MENU</li>

                 <!-- <li class="nav-item">
            <a href="usuarios.php" class="nav-link">
              <i class="nav-icon fas fa-users"></i>
              <p>
                Usuarios
                <span class="badge badge-info right">
                  
                         
                  6
                </span>
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="inventario.php" class="nav-link">
              <i class="nav-icon far fa-image"></i>
              <p>
                Inventario
              </p>
            </a>
          </li>  -->

                 <li class="nav-item">
                     <a href="#" class="nav-link">
                         <i class="nav-icon fas fa-chart-pie"></i>
                         <p>
                             Ventas
                             <i class="right fas fa-angle-left"></i>
                         </p>
                     </a>
                     <ul class="nav nav-treeview">
                         <li class="nav-item">
                             <a href="crear_venta.php" class="nav-link">
                                 <i class="fas fa-clipboard-check nav-icon text-success"></i>
                                 <p>Registrar venta en el Local</p>
                             </a>
                         </li>

                         <li class="nav-item">
                             <a href="reporte_venta.php" class="nav-link">
                                 <i class="fas fa-file-excel nav-icon text-primary"></i>
                                 <p>Reporte de ventas</p>
                             </a>
                         </li>
                     </ul>
                 </li>
                 <li class="nav-item">
                     <a href="productos.php" class="nav-link">
                         <i class="fas fa-tshirt nav-icon"></i>
                         <p>Productos</p>
                     </a>
                 </li>
                 <!--
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="fas fa-users-cog nav-icon"></i>
              <p>
                Configuración
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="../megasportini/csv.php" class="nav-link">
                  <i class="nav-icon fas fa-share-square"></i>
                  <p>Cargue Inicial de Datos</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="#" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Otras ...</p>
                </a>
              </li>
            </ul>
          </li>
          -->

             </ul>
         </nav>
         <!-- /.sidebar-menu -->
     </div>
     <!-- /.sidebar -->
 </aside>