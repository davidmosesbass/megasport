 <!-- Main Sidebar Container -->
 <aside class="main-sidebar sidebar-dark-primary elevation-4">

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
      <i class="fas fa-rupee-sign nav-icon text-warning text-lg"></i>
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
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-user-tie"></i>
              <p>
                Gestionar Proveedores 
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="crearProveedor.php" class="nav-link">
                <i class="fas fa-address-card nav-icon text-success"></i>
                  <p>Crear Proveedor</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="CalificarPro.php" class="nav-link">
                <i class="fas fa-thumbs-up nav-icon text-primary"></i>
                  <p>Calificar Proveedor</p>
                </a>
              </li>
              
            </ul>
          </li>
          <li class="nav-item">
            <a href="clientes.php" class="nav-link">
              <i class="fas fa-users nav-icon"></i>
              <p>Mantenimiento de Clientes</p>
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