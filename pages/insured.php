<?php 

session_start();
if ($_SESSION['user']=="") {
  header('location:../pages/sesion.php');
}
//importamos las clases para alimentas listas de despliegues
include_once ('../modelo/m_statusCivil.php');
include_once ('../modelo/m_estado.php');

?>
<!DOCTYPE html>
<html>
<?php include_once '../pages/head.php';?>
<body class="skin-green sidebar-mini">
    <div class="wrapper">
    <?php include_once '../pages/header.php';?>
      <!-- Left side column. contains the logo and sidebar -->
      <?php include_once '../pages/menu.php';?>

      <!-- Content Wrapper. Contains page content -->
      <div class="content-wrapper" style="min-height: 553px;">
        <!-- Content Header (Page header) -->
				<section class="content-header">
          <h1>RR-HH | INQUIPORT S.A
            <small>Version 1.0</small>
          </h1>
          
          <ol class="breadcrumb">
            <li class="active"><i class="fa fa-dashboard"></i> Inicio</li>
          </ol>
        </section>
		
		    <!-- Main content -->
        <section class="content">
          <!-- Info boxes -->
          <div class="row">
            <div class="col-md-12">
              <div class="box">
                <div class="box-header with-border">
                  <h3 class="box-title">Nuevo Asegurado</h3>
                  <div class="box-tools pull-right">
                    <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
                  </div>
                </div><!-- /.box-header -->
                <div class="box-body">
                  <form>
                  <div class="form-group row">
                    <div class="col-xs-12 col-md-2">
                        <div class="input-group">
                          <input type="text" class="form-control" id="cedula_persona" name="cedula_persona" placeholder="Buscar cedula" autofocus >
                          <div class="input-group-btn">
                            <button class="btn btn-default" type="button" id="buscar_persona">
                            <i class="fa fa-search"></i>
                            </button>
                          </div>
                        </div>
                      </div>
                  </div>
                  <hr>
                    <div class="form-group row">
                        <div class="col-xs-12 col-md-2">
                            <label for="ci">Cedula:</label>
                            <input class="form-control input-sm" id="ci" name="ci" type="text" placeholder="00000000" readOnly>
                            <input class="form-control input-sm" id="idpersona" name="idpersona" type="hidden" placeholder="" readOnly>
                        </div>
                        <div class="col-xs-12 col-md-12 col-md-4">
                            <label for="ci">Nombres y Apellidos:</label>
                            <input class="form-control input-sm" id="nombres" name="nombres" type="text" placeholder="Nombres y Apellidos" readOnly>
                        </div>
                        <div class="col-xs-12 col-md-12 col-md-3">
                            <label for="fn">Fecha de Nacimiento:</label>
                            <input class="form-control input-sm" id="fn" name="fn" type="text" placeholder="00/00/0000" readOnly>
                        </div>
                        <div class="col-xs-12 col-md-1">
                            <label for="edad">Edad:</label>
                            <input class="form-control input-sm" id="edad" name="edad" type="text" placeholder="00" readOnly>
                        </div>
                        <div class="col-xs-12 col-md-2">
                            <label for="sexo">sexo:</label>
                            <input class="form-control input-sm" id="sexo" name="sexo" type="text" placeholder="Masculino/fenemino" readOnly>
                        </div>
                    </div>
                    <hr>
                    <div class="form-group row">
                        <div class="col-xs-12 col-md-2">
                            <label for="tipo_nomina">Tipo Nomina:</label>
                            <select name="tipo_nomina" id="tipo_nomina" class="form-control input-sm">
                                <option value="">Seleccione</option>
                                <?php
                                    require '../config/config_db.php';
                                    $link = mysqli_connect(HOST,USER,PASSWORD,DATABASE) or die('No se pudo conectar: ' . mysql_error());
                                    $sql = "SELECT * FROM ttiponomina ORDER BY tipo_nomina ASC";
                                    $query = mysqli_query($link,$sql);
                                    while ($row = mysqli_fetch_array($query)) {
                                        echo '<option value="'.$row['idtipo_nomina'].'">'.$row['tipo_nomina'].'</option>';
                                    }
                                ?>
                            </select>
                        </div>
                        <div class="col-xs-12 col-md-2">
                            <label for="tipo_ingreso">Tipo de Ingreso:</label>
                            <input class="form-control input-sm" id="tipo_ingreso" name="tipo_ingreso" type="text" placeholder="Ingreso" readOnly>
                        </div>
                        <div class="col-xs-12 col-md-12 col-md-4">
                            <label for="departamento">Departamento:</label>
                            <select name="departamento" id="departamento" class="form-control input-sm">
                                <option value="">Seleccione</option>
                                <?php
                                    $sql = "SELECT * FROM tdepartamento ORDER BY departamento ASC";
                                    $query = mysqli_query($link,$sql);
                                    while ($row = mysqli_fetch_array($query)) {
                                        echo '<option value="'.$row['iddepartamento'].'">'.$row['departamento'].'</option>';
                                    }
                                    mysqli_close($link);
                                ?>
                            </select>
                        </div>
                        <div class="col-xs-12 col-md-2">
                            <p style="margin-bottom: -0.1em;"><label for="maternidad">Maternidad:</label></p>
                            <label class="radio-inline"><input type="radio" id="maternidad" name="maternidad" value="SI">Si</label>
                            <label class="radio-inline"><input type="radio" id="maternidad" name="maternidad" value="NO" checked>No</label>
                        </div>
                        
                    </div>
                    <hr>
                    <div class="form-group">
                    <button type="button" name="cal_montos" id="cal_montos" class="btn btn-primary btn-sm"><i class="fa fa-calculator"></i> Calcular montos</button>
                    </div>
                    <hr>
                    <div class="form-group row">
                        <div class="col-xs-12 col-md-2">
                            <label for="monto_prima">Monto Prima:</label>
                            <input class="form-control input-sm" id="monto_prima" name="monto_prima" type="text" placeholder="0.000,00 Bs.S" readOnly>
                        </div>
                        <div class="col-xs-12 col-md-2">
                            <label for="mes_prima">Mes Prima:</label>
                            <input class="form-control input-sm" id="mes_prima" name="mes_prima" type="text" placeholder="00" readOnly>
                        </div>
                        <div class="col-xs-12 col-md-2">
                            <label for="monto">Monto:</label>
                            <input class="form-control input-sm" id="monto" name="monto" type="text" placeholder="0.000,00 Bs.S" readOnly>
                        </div>
                        <div class="col-xs-12 col-md-2">
                            <label for="monto_empresa">Monto Empresa:</label>
                            <input class="form-control input-sm" id="monto_empresa" name="monto_empresa" type="text" placeholder="0.000,00 Bs.S" readOnly>
                        </div>
                        <div class="col-xs-12 col-md-2">
                            <label for="monto_empleado">Monto Empleado:</label>
                            <input class="form-control input-sm" id="monto_empleado" name="monto_empleado" type="text" placeholder="0.000,00 Bs.S" readOnly>
                        </div>
                    </div>
                    <hr>
                    <div class="form-group">
                    <button type="button" name="registrar_insured" id="registrar_insured" class="btn btn-success btn-sm"><i class="fa fa-plus"></i> Registrar</button>
                    </div>
                  </form>
                </div>
              </div>
            </div>
          </div> 
        </section><!-- /.content -->
		  </div><!-- /.content-wrapper -->

      <footer class="main-footer">
	      <div class="pull-right hidden-xs">
		      <b>Versión</b> 1.0
	      </div>Desarrollo: <strong>Departamento IT <i class="fa fa-laptop"></i></strong>
      </footer>    
 
	  
  <script src="../assets/js/jquery-3.2.1.js"></script>
  <script src="../assets/js/bootstrap.js"></script>
  <script src="../assets/js/jquery.bootstrap-growl.js"></script>
  <!-- ChartJS 1.0.1 -->
  <script src="../assets/js/Chart.js"></script>
  <!-- FastClick -->
  <script src="../assets/js/fastclick.js"></script>
  <!-- AdminLTE App -->
  <script src="../assets/js/app.js"></script>
  <script src="../assets/js/searchPeople.js"></script>
  <script src="../assets/js/calculatorTable.js"></script>
  <script src="../assets/js/newInsured.js"></script>
  <script src="../assets/js/validaciones.js"></script>


 



</body>
</html>
<!-- jQuery 2.1.4 -->