<?php 

session_start();
if ($_SESSION['user']=="") {
  header('location:../pages/sesion.php');
}
//importamos las clases para alimentas listas de despliegues

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
                  <h3 class="box-title">Nuevo ingreso</h3>
                  <div class="box-tools pull-right">
                    <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
                  </div>
                </div><!-- /.box-header -->
                <div class="box-body">
                  <form>
                    <ul class="nav nav-tabs">
                      <li class="active"><a data-toggle="tab" href="#home"><i class="fa fa-user"></i> Datos Personales</a></li>
                      <li><a data-toggle="tab" href="#menu1"><i class="fa fa-user-plus"></i> Otros datos</a></li>
                      <li><a data-toggle="tab" href="#menu2"><i class="fa fa-location-arrow"></i> Dirección</a></li>
                      <li><a data-toggle="tab" href="#menu3"><i class="fa fa-child"></i> Hijos</a></li>
                      <li><a data-toggle="tab" href="#menu4"><i class="fa fa-graduation-cap"></i> Grado Academico</a></li>
                      <li><a data-toggle="tab" href="#menu5"><i class="fa fa-arrows-alt"></i> Area de Interes</a></li>
                      <li><a data-toggle="tab" href="#menu6"><i class="fa fa-car"></i> Vehiculos</a></li>
                      <li><a data-toggle="tab" href="#menu7"><i class="fa fa-plus"></i> Condiciones Fisicas</a></li>
                      <li><a data-toggle="tab" href="#menu8"><i class="fa fa-building"></i> Experiencia Laboral</a></li>
                      <li><a data-toggle="tab" href="#menu9"><i class="fa fa-road"></i> Referencias</a></li>
                      <li class="disabled"><a data-toggle="tab" href="#"><i class="fa fa-file"></i> Consignación de Documentos</a></li>
                      <li><a data-toggle="tab" href="#menu11"><i class="fa fa-caret-right"></i> Registro</a></li>
                    </ul>

                    <div class="tab-content">
                    <!-- pestaña home-->
                      <div id="home" class="tab-pane fade in active">
                        <h3>Datos Personales</h3><hr>
                        <div class="form-group row">
                          <div class="col-xs-12 col-md-2">
                            <label for="ci"><span style="color: red; font-size: 17px;">*</span> Cedula:</label>
                            <input class="form-control input-sm" id="ci" name="ci" type="text" placeholder="00000000" onkeypress="return SoloNumeros(event);">
                          </div>
                          <div class="col-xs-12 col-md-2">
                            <label for="pn"><span style="color: red; font-size: 17px;">*</span> Primer nombre:</label>
                            <input class="form-control input-sm" id="pn" name="pn" type="text" placeholder="Nombre 1" onkeypress="return SoloLetras(event);">
                          </div>
                          <div class="col-xs-12 col-md-2">
                            <label for="sn">Segundo nombre:</label>
                            <input class="form-control input-sm" id="sn" name="sn" type="text" placeholder="Nombre 2" onkeypress="return SoloLetras(event);">
                          </div>
                          <div class="col-xs-12 col-md-2">
                            <label for="pa"><span style="color: red; font-size: 17px;">*</span> Primer apellido:</label>
                            <input class="form-control input-sm" id="pa" name="pa" type="text" placeholder="Apellido 1" onkeypress="return SoloLetras(event);">
                          </div>
                          <div class="col-xs-12 col-md-2">
                            <label for="sa">Segundo pellido:</label>
                            <input class="form-control input-sm" id="sa" name="sa" type="text" placeholder="Apellido 2" onkeypress="return SoloLetras(event);">
                          </div>
                          <div class="col-xs-12 col-md-2">
                            <label for="sexo"><span style="color: red; font-size: 17px;">*</span> Sexo:</label>
                            <select name="sexo" id="sexo" class="form-control input-sm">
                              <option value="">Seleccione</option>
                              <option value="FEMENINO">FEMENINO</option>
                              <option value="MASCULINO">MASCULINO</option>
                            </select>
                          </div>
                        </div>

                        <div class="form-group row">
                          <div class="col-xs-12 col-md-2">
                            <label for="estado_civil"><span style="color: red; font-size: 17px;">*</span> Estado civil:</label>
                            <select name="estado_civil" id="estado_civil" class="form-control input-sm">
                              <option value="">Seleccione</option>
                              <?php
                              require '../config/config_db.php';
                              $link = mysqli_connect(HOST,USER,PASSWORD,DATABASE) or die('No se pudo conectar: ' . mysql_error());
                              $sql = "SELECT * FROM testado_civil WHERE estatus = 1";
                              $query = mysqli_query($link,$sql);
                              while ($row = mysqli_fetch_array($query)) {
                                $id = $row['idestado_civil'];
                                $ec = $row['estado_civil'];
                              ?>
                              <option value="<?php echo $id; ?>"><?php echo $ec; ?></option>
                              <?php } ?>
                            </select>
                          </div>
                          <div class="col-xs-12 col-md-2">
                            <label for="fn"><span style="color: red; font-size: 17px;">*</span> Fecha de nacimiento:</label>
                            <input class="form-control input-sm" id="fn" name="fn" type="date"  onchange="Edad(this.value)">
                          </div>
                         
                          <div class="col-xs-12 col-md-1">
                            <label for="edad"><span style="color: red; font-size: 17px;">*</span> Edad:</label>
                            <input class="form-control input-sm" id="edad" name="edad" type="text" placeholder="00" readOnly>
                          </div>
                          <div class="col-xs-12 col-md-2">
                            <label for="lugar_nac"><span style="color: red; font-size: 17px;">*</span> Lugar de nacimiento:</label>
                            <input class="form-control input-sm" id="lugar_nac" name="lugar_nac" type="text" placeholder="Nombre del lugar" onkeypress="return SoloLetras(event);">
                          </div>
                          <div class="col-xs-12 col-md-2">
                            <label for="sexo"><span style="color: red; font-size: 17px;">*</span> Nacionalidad:</label>
                            <select name="nacionalidad" id="nacionalidad" class="form-control input-sm">
                              <option value="">Seleccione</option>
                              <option value="VENEZOLANA">Venezolana</option>
                              <option value="EXTRANJERA">Extranjero</option>
                            </select>
                          </div>
                          <div class="col-xs-12 col-md-3">
                            <label for="correo"><span style="color: red; font-size: 17px;">*</span> Correo:</label>
                            <input class="form-control input-sm" id="correo" name="correo" type="text" placeholder="nombre@correo.com">
                          </div>

                        </div>
                        <hr>
                        <div class="form-group row">
                          <div class="col-xs-12 col-md-4">
                            <p><label><span style="color: red; font-size: 17px;">*</span> Lateralidad:</label></p>
                            <label class="radio-inline"><input type="radio" id="lateral" name="lateral" value="DERECHO">Derecho</label>
                            <label class="radio-inline"><input type="radio" id="lateral" name="lateral" value="ZURDO">Zurdo</label>
                            <label class="radio-inline"><input type="radio" id="lateral" name="lateral" value="AMBIDIESTRO">Ambidiestro</label>
                          </div>
                        </div>
                        <hr>
                        <div class="form-group row">
                          
                          <div class="col-xs-12 col-md-3">
                            <label for="telhabi"><span style="color: red; font-size: 17px;">*</span> Teléf. Habitación:</label>
                            <input class="form-control input-sm" id="telhabi" name="telhabi" type="text" placeholder="0000000" onkeypress="return SoloNumeros(event);">
                          </div>
                          
                          <div class="col-xs-12 col-md-3">
                            <label for="telmovil"><span style="color: red; font-size: 17px;">*</span> Teléf. Movil:</label>
                            <input class="form-control input-sm" id="telmovil" name="telmovil" type="text" placeholder="0000000" onkeypress="return SoloNumeros(event);">
                          </div>
                          
                          <div class="col-xs-12 col-md-3">
                            <label for="teladic">Teléf. Adicional:</label>
                            <input class="form-control input-sm" id="teladic" name="teladic" type="text" placeholder="0000000" onkeypress="return SoloNumeros(event);">
                          </div>
                        </div>
                        <hr>
                        <div class="form-group row">
                          <div class="col-xs-12 col-md-2">
                            <p style="margin-bottom: -0.1em;"><label for="licencia"><span style="color: red; font-size: 17px;">*</span> Licencia de Conducir:</label></p>
                            <label class="radio-inline"><input type="radio" id="licencia" name="licencia" value="SI" onclick="fecha_expeOff(this.value)">Si</label>
                            <label class="radio-inline"><input type="radio" id="licencia" name="licencia" value="NO" onclick="fecha_expeOff(this.value)">No</label>
                            
                          </div>
                          <div class="col-xs-12 col-md-2">
                            <label for="fecha_expe">Fecha Expedición:</label>
                            <input class="form-control input-sm" id="fecha_expe" name="fecha_expe" type="date">
                          </div>
                        </div>
                        <hr>
                        <div class="form-group row">
                          <div class="col-xs-12 col-md-2">
                            <label for="pantalon"><span style="color: red; font-size: 17px;">*</span> Pantalón:</label>
                            <input class="form-control input-sm" id="pantalon" name="pantalon" type="text" placeholder="tallas" onkeypress="return SoloNumeros(event);">
                          </div>
                          <div class="col-xs-12 col-md-2">
                            <label for="camisa"><span style="color: red; font-size: 17px;">*</span> Camisa:</label>
                            <input class="form-control input-sm" id="camisa" name="camisa" type="text" placeholder="tallas" onkeypress="return SoloLetras(event);">
                          </div>
                          <div class="col-xs-12 col-md-2">
                            <label for="zapato"><span style="color: red; font-size: 17px;">*</span> Zapato:</label>
                            <input class="form-control input-sm" id="zapato" name="zapato" type="text" placeholder="tallas" onkeypress="return SoloNumeros(event);">
                          </div>
                        </div>
                        <div class="form-group">
                            <strong>(<span style="color: red; font-size: 17px;">*</span>): Campos obligatorios</strong>
                        </div>
                      </div>
                      <!-- pestaña otros datos-->
                      <div id="menu1" class="tab-pane fade">
                        <h3>Otros datos</h3>
                        <div class="form-group row">
                          <div class="col-xs-12 col-md-4">
                            <label for="conyuge">Nombre del Conyuge:</label>
                            <input class="form-control input-sm" id="conyuge" name="conyuge" type="text" placeholder="Ejemplo: Maria Perez" onkeypress="return SoloLetras(event);">
                          </div>
                          <div class="col-xs-12 col-md-3">
                            <label for="sexo"> Nacionalidad:</label>
                            <select name="nac_conyuge" id="nac_conyuge" class="form-control input-sm">
                              <option value="">Seleccione</option>
                              <option value="VENEZOLANA">Venezolana</option>
                              <option value="EXTRANJERA">Extranjero</option>
                            </select>
                          </div>
                          <div class="col-xs-12 col-md-2">
                            <label for="fecha_nac_conyuge">Fecha de nacimiento:</label>
                            <input class="form-control input-sm" id="fecha_nac_conyuge" name="fecha_nac_conyuge" type="date" placeholder="tallas">
                          </div>
                          <div class="col-xs-12 col-md-3">
                            <label for="ocupacion_conyuge">Ocupación:</label>
                            <input class="form-control input-sm" id="ocupacion_conyuge" name="ocupacion_conyuge" type="text" placeholder="Ejemplo: Docente" onkeypress="return SoloLetras(event);">
                          </div>
                        </div>
                        <div class="form-group row">
                          <div class="col-xs-12 col-md-4">
                            <label for="padre"><span style="color: red; font-size: 17px;">*</span> Nombre del Padre:</label>
                            <input class="form-control input-sm" id="padre" name="padre" type="text" placeholder="Ejemplo: Maria Perez" onkeypress="return SoloLetras(event);">
                          </div>
                          <div class="col-xs-12 col-md-3">
                            <label for="sexo"><span style="color: red; font-size: 17px;">*</span> Nacionalidad:</label>
                            <select name="nac_padre" id="nac_padre" class="form-control input-sm">
                              <option value="">Seleccione</option>
                              <option value="VENEZOLANA">Venezolana</option>
                              <option value="EXTRANJERA">Extranjero</option>
                            </select>
                          </div>
                          <div class="col-xs-12 col-md-2">
                            <label for="fecha_nac_padre"><span style="color: red; font-size: 17px;">*</span> Fecha de nacimiento:</label>
                            <input class="form-control input-sm" id="fecha_nac_padre" name="fecha_nac_padre" type="date" placeholder="tallas" onkeypress="return SoloLetras(event);">
                          </div>
                          <div class="col-xs-12 col-md-3">
                            <label for="ocupacion_padre"><span style="color: red; font-size: 17px;">*</span> Ocupación:</label>
                            <input class="form-control input-sm" id="ocupacion_padre" name="ocupacion_padre" type="text" placeholder="Ejemplo: Docente" onkeypress="return SoloLetras(event);">
                          </div>
                        </div>
                        <div class="form-group row">
                          <div class="col-xs-12 col-md-4">
                            <label for="madre"><span style="color: red; font-size: 17px;">*</span> Nombre de la Madre:</label>
                            <input class="form-control input-sm" id="madre" name="madre" type="text" placeholder="Ejemplo: Maria Perez" onkeypress="return SoloLetras(event);">
                          </div>
                          <div class="col-xs-12 col-md-3">
                            <label for="sexo"><span style="color: red; font-size: 17px;">*</span> Nacionalidad:</label>
                            <select name="nac_madre" id="nac_madre" class="form-control input-sm">
                              <option value="">Seleccione</option>
                              <option value="VENEZOLANA">Venezolana</option>
                              <option value="EXTRANJERA">Extranjero</option>
                            </select>
                          </div>
                          <div class="col-xs-12 col-md-2">
                            <label for="fecha_nac_madre"><span style="color: red; font-size: 17px;">*</span> Fecha de nacimiento:</label>
                            <input class="form-control input-sm" id="fecha_nac_madre" name="fecha_nac_madre" type="date" placeholder="">
                          </div>
                          <div class="col-xs-12 col-md-3">
                            <label for="ocupacion_madre"><span style="color: red; font-size: 17px;">*</span> Ocupación:</label>
                            <input class="form-control input-sm" id="ocupacion_madre" name="ocupacion_madre" type="text" placeholder="Ejemplo: Docente" onkeypress="return SoloLetras(event);">
                          </div>
                        </div>
                        <hr>
                        <div class="form-group row">
                          <div class="col-xs-12 col-md-4">
                            <label for="aof_inquiport">Amigo o Familiar en Inquiport:</label>
                            <input class="form-control input-sm" id="aof_inquiport" name="aof_inquiport" type="text" placeholder="Nombre de la Persona" onkeypress="return SoloLetras(event);">
                          </div>
                          <div class="col-xs-12 col-md-3">
                            <label for="aof_area_inquiport">Area de Trabajo:</label>
                            <input class="form-control input-sm" id="aof_area_inquiport" name="aof_area_inquiport" type="text" placeholder="Nombre del Area" onkeypress="return SoloLetras(event);">
                          </div>
                        </div>
                        <hr>
                        <div class="form-group">
                          <p style="margin-bottom: -0.5em;"><label for=""><span style="color: red; font-size: 17px;">*</span> ¿Como se entero del empleo?:</label></p>
                          <div class="radio">
                            <label><input type="radio" name="conoc_empleo" value="FAMILIAR EN LA EMPRESA">Familiar en la Empresa</label>
                          </div>
                          <div class="radio">
                            <label><input type="radio" name="conoc_empleo" value="AMIGOS EN LA EMPRESA">Amigos en la Empresa</label>
                          </div>
                          <div class="radio">
                            <label><input type="radio" name="conoc_empleo" value="AGENCIAS DE EMPLEO">Agencias de Empleo</label>
                          </div>
                          <div class="radio">
                            <label><input type="radio" name="conoc_empleo" value="UNIVERSIDAD">Universidad</label>
                          </div>

                        </div>
                        <div class="form-group row">
                          <div class="col-xs-12 col-md-4">
                            <p style="margin-bottom: -0.1em;"><label for="empleo_ant"><span style="color: red; font-size: 17px;">*</span> ¿Ha solicitado empleo anteriormente en Inquiport?:</label></p>
                            <label class="radio-inline"><input type="radio" id="empleo_ant" name="empleo_ant" value="SI" onclick="empleoOff(this.value)">Si</label>
                            <label class="radio-inline"><input type="radio" id="empleo_ant" name="empleo_ant" value="NO" onclick="empleoOff(this.value)">No</label>
                          </div>
                          <div class="col-xs-12 col-md-2">
                            <label for="empleo_ant_cuando">¿Cuando?:</label>
                            <input class="form-control input-sm" id="empleo_ant_cuando" name="empleo_ant_cuando" type="date">
                          </div>
                          <div class="col-xs-12 col-md-2">
                            <label for="empleo_ant_donde">¿Donde?:</label>
                            <input class="form-control input-sm" id="empleo_ant_donde" name="empleo_ant_donde" type="text" placeholder="Nombre del Lugar" onkeypress="return SoloLetras(event);">
                          </div>
                        </div>
                        <hr>
                        <div class="form-group row">
                          <div class="col-xs-12 col-md-2">
                            <p style="margin-bottom: -0.1em;"><label for="idioma"><span style="color: red; font-size: 17px;">*</span> ¿Habla algun idioma?:</label></p>
                            <label class="radio-inline"><input type="radio" id="idioma" name="idioma" value="SI" onclick="idiomaOff(this.value)">Si</label>
                            <label class="radio-inline"><input type="radio" id="idioma" name="idioma" value="NO" onclick="idiomaOff(this.value)">No</label>
                          </div>
                          <div class="col-xs-12 col-md-2">
                            <label for="nom_idioma">Idioma:</label>
                            <input class="form-control input-sm" id="nom_idioma" name="nom_idioma" type="text" placeholder="Nombre del idioma" onkeypress="return SoloLetras(event);">
                          </div>
                          <div class="col-xs-12 col-md-2">
                            <label for="habla_idioma">Habla:</label>
                            <select name="habla_idioma" id="habla_idioma" class="form-control input-sm">
                              <option value="">Seleccione</option>
                              <option value="BASICO">Basico</option>
                              <option value="INTERMEDIO">Intermedio</option>
                              <option value="AVANZADO">Avanzado</option>
                            </select>
                          </div>
                          <div class="col-xs-12 col-md-2">
                            <label for="escribe_idioma">Escribe:</label>
                            <select name="escribe_idioma" id="escribe_idioma" class="form-control input-sm">
                              <option value="">Seleccione</option>
                              <option value="BASICO">Basico</option>
                              <option value="INTERMEDIO">Intermedio</option>
                              <option value="AVANZADO">Avanzado</option>
                            </select>
                          </div>
                        </div>
                        <hr>
                        <div class="form-group">
                          <table class="table" id="tabla_dist_academicas">
                            <thead>
                              <th> Distinciones académicas</th>
                            </thead>
                            <tr>
                              <td style="width: 30%;">
                                <input type="text" name="dist_academicas[]" placeholder="Academicas, Honores, Premios, Becas, Otros" class="form-control name_list input-sm" />
                              </td>
                            <td>
                              <button type="button" name="add_dist_aca" id="add_dist_aca" class="btn btn-success btn-sm"><i class="fa fa-plus"></i></button>
                            </td>
                          </tr>
                        </table>
                        </div>
                        <hr>
                        <div class="form-group">
                          <table class="table" id="tabla_part_sociales">
                            <thead>
                              <th> Participaciones sociales, Artistas y/o Deportivas</th>
                            </thead>
                            <tr>
                              <td style="width: 30%;">
                                <input type="text" name="part_sociales[]" placeholder="Sociales, Artistas y/o Deportivas, Otros" class="form-control name_list input-sm" />
                              </td>
                            <td>
                              <button type="button" name="add_part_sociales" id="add_part_sociales" class="btn btn-success btn-sm"><i class="fa fa-plus"></i></button>
                            </td>
                          </tr>
                        </table>
                        </div>
                        <div class="form-group">
                          <strong>(<span style="color: red; font-size: 17px;">*</span>): Campos obligatorios</strong>
                        </div>
                      </div>
                      <!-- pestaña direccion-->
                      <div id="menu2" class="tab-pane fade">
                        <h3>Direccion</h3>
                        <div class="form-group row">
                          <div class="col-xs-12 col-md-3">
                            <label for="estado"><span style="color: red; font-size: 17px;">*</span> Estado:</label>
                            <select name="estado" id="estado" class="form-control input-sm">
                            <option value="">Seleccione Estado</option>
                            <?php
                            $sql = "SELECT * FROM testados ORDER BY estado ASC";
                            $query = mysqli_query($link,$sql);
                              while ($row = mysqli_fetch_array($query)) {
                                echo '<option value="'.$row['id_estado'].'">'.$row['estado'].'</option>'
                            ?>
                              
                            <?php }?>
                            </select>
                          </div>
                          <div class="col-xs-12 col-md-3">
                            <label for="municipio"><span style="color: red; font-size: 17px;">*</span> Municipio:</label>
                            <select name="municipio" id="municipio" class="form-control input-sm">
                              <option value="">Esperando..</option>
                              
                            </select>
                          </div>
                          <div class="col-xs-12 col-md-3">
                            <label for="ciudad"><span style="color: red; font-size: 17px;">*</span> Ciudad:</label>
                            <select name="ciudades" id="ciudad" class="form-control input-sm">
                              <option value="0">Esperando..</option>
                              
                            </select>
                          </div>
                        </div>

                        <div class="form-group row">
                          <div class="col-xs-12 col-md-3">
                            <label for="urbanismo"><span style="color: red; font-size: 17px;">*</span> Urbanismo:</label>
                            <input class="form-control input-sm" id="urbanismo" name="urbanismo" type="text" placeholder="Nombre">
                          </div>
                          <div class="col-xs-12 col-md-2">
                            <label for="av_calle"><span style="color: red; font-size: 17px;">*</span> Av/Calle:</label>
                            <input class="form-control input-sm" id="av_calle" name="av_calle" type="text" placeholder="Numero" onkeypress="return SoloNumeros(event);">
                          </div>
                          <div class="col-xs-12 col-md-2">
                            <label for="tipo"><span style="color: red; font-size: 17px;">*</span> Tipo de Vivienda:</label>
                            <select name="tipo" id="tipo" class="form-control input-sm">
                              <option value="">Seleccione</option>
                              <option value="CASA">Casa</option>
                              <option value="APARTAMENTO">Apartamento</option>
                              <option value="QUINTA">Quinta</option>
                              <option value="RESIDENCIA">Residencia</option>
                            </select>
                          </div>
                          <div class="col-xs-12 col-md-1">
                            <label for="numero_vivienda"><span style="color: red; font-size: 17px;">*</span> N°:</label>
                            <input class="form-control input-sm" id="numero_vivienda" name="numero_vivienda" type="text" placeholder="00" onkeypress="return SoloNumeros(event);">
                          </div>
                          <div class="col-xs-12 col-md-2">
                            <label for="planta"> Planta:</label>
                            <select name="planta" id="planta" class="form-control input-sm">
                              <option value="">Seleccione</option>
                              <option value="ALTA">Alta</option>
                              <option value="BAJA">Baja</option>
                            </select>
                          </div>
                          <div class="col-xs-12 col-md-1">
                            <label for="piso">Piso:</label>
                            <input class="form-control input-sm" id="piso" name="piso" type="text" placeholder="00" onkeypress="return SoloNumeros(event);">
                          </div>
                          
                        </div>
                        <div class="form-group">
                            <strong>(<span style="color: red; font-size: 17px;">*</span>): Campos obligatorios</strong>
                        </div>
                      </div>
                      <!-- pestaña numero de hijos-->
                      <div id="menu3" class="tab-pane fade">
                        <h3>N° de Hijos</h3>
                        <div class="form-group">
                        <h4>Si tiene hijos llene todos los campos o los campos obligatorios.</h4>
                        <hr>
                          <table class="table" id="tabla_hijos">
                            <thead>
                              <th><span style="color: red; font-size: 17px;">*</span> Nombres</th>
                              <th><span style="color: red; font-size: 17px;">*</span> Sexo</th>
                              <th><span style="color: red; font-size: 17px;">*</span> Nacimiento</th>
                              <th>Cedula</th>
                              <th>Ocupacion</th>
                            </thead>
                            <tr>
                              <td>
                                <input type="text" name="name_hijo[]" id="name_hijo[]" placeholder="Ejemplo: Juan" class="form-control name_list input-sm" onkeypress="return SoloLetras(event);" />
                              </td>
                            <td>
                              <select name="sexo_hijo[]" id="sexo_hijo[]" class="form-control input-sm">
                                <option value="">Seleccione</option>
                                <option value="FEMENINO">FEMENINO</option>
                                <option value="MASCULINO">MASCULINO</option>
                              </select>
                            </td>
                            <td>
                              <input type="text" name="lugar_nac_hijo[]" id="lugar_nac_hijo[]" placeholder="Nombre del lugar" class="form-control name_list input-sm" onkeypress="return SoloLetras(event);"/>
                            </td>
                            <td>
                              <input type="text" name="ci_hijo[]" id="ci_hijo[]" placeholder="00000000" class="form-control name_list input-sm" onkeypress="return SoloNumeros(event);"/>
                            </td>
                            <td>
                              <input type="text" name="ocupacion_hijo[]" id="ocupacion_hijo[]" placeholder="Ejemplo: Estudiante" class="form-control name_list input-sm" onkeypress="return SoloLetras(event);"/>
                            </td>
                            <td>
                              <button type="button" name="add_hijos" id="add_hijos" class="btn btn-success btn-sm"><i class="fa fa-plus"></i></button>
                            </td>
                          </tr>
                        </table>
                        </div>
                        <div class="form-group">
                            <strong>(<span style="color: red; font-size: 17px;">*</span>): Campos obligatorios</strong>
                        </div>
                      </div>
                      <!-- pestaña grado academico-->
                      <div id="menu4" class="tab-pane fade">
                        <h3>Grado Academico</h3>
                        <div class="form-group">
                          <table class="table" id="tabla_grado_inst">
                            <thead>
                              <th><span style="color: red; font-size: 17px;">*</span> Nivel Educativo</th>
                              <th><span style="color: red; font-size: 17px;">*</span> Institución</th>
                              <th><span style="color: red; font-size: 17px;">*</span> Ciudad</th>
                              <th>Desde - Hasta</th>
                              <th><span style="color: red; font-size: 17px;">*</span> Años culminados</th>
                            </thead>
                            <tr>
                              <td>
                              <select name="nivel_educativo[]" id="nivel_educativo" class="form-control input-sm">
                                <option value="">Seleccione</option>
                                <option value="PRIMARIA">Primaria</option>
                                <option value="SECUNDARIA">Secundaria</option>
                                <option value="SUPERIOR">Superior</option>
                                <option value="POSTGRADO">Postgrado</option>

                              </select>
                              </td>
                                <td>
                                  <input type="text" name="institucion[]" id="institucion" placeholder="Nombre de la institución" class="form-control name_list input-sm" onkeypress="return SoloLetras(event);"/>
                                </td>
                              <td>
                                <input type="text" name="ciudad[]" id="ciudad" placeholder="Nombre" class="form-control name_list input-sm" onkeypress="return SoloLetras(event);"/>
                              </td>
                              <td>
                                <input type="text" name="desde_hasta[]" id="desde_hasta" placeholder="0000 - 0000" class="form-control name_list input-sm" />
                              </td>
                              <td>
                                <input type="text" name="anos_culminacion[]" id="anos_culminacion" placeholder="00" class="form-control name_list input-sm" onkeypress="return SoloNumeros(event);"/>
                              </td>
                              <td>
                                <button type="button" name="add_grado_inst" id="add_grado_inst" class="btn btn-success btn-sm"><i class="fa fa-plus"></i></button>
                              </td>
                          </tr>
                        </table>
                        </div>
                        <div class="form-group">
                            <strong>(<span style="color: red; font-size: 17px;">*</span>): Campos obligatorios</strong>
                        </div>
                      </div>
                      <!-- pestaña areas de interes-->
                      <div id="menu5" class="tab-pane fade">
                        <h4>¿En que áreas esta dispuesto a desarrolarse? Marque las 3 áreas de su interés en orden de preferencia</h4>
                        <hr>
                        <div class="form-group row">

                          <div class="col-xs-12 col-md-3">
                            <p style="margin-bottom: -0.5em;"><label for=""><span style="color: red; font-size: 17px;">*</span> Areas de Interés:</label></p>
                          <div class="checkbox">
                            <label><input type="checkbox" name="area_inte[]" id="area_inte[]" value="ADMINISTRACION Y FINANZAS">Administración y Finanzas</label>
                          </div>
                          <div class="checkbox">
                            <label><input type="checkbox" name="area_inte[]" id="area_inte[]" value="SISTEMAS">Sistemas</label>
                          </div>
                          <div class="checkbox">
                            <label><input type="checkbox" name="area_inte[]" id="area_inte[]" value="VENTAS">Ventas</label>
                          </div>
                          <div class="checkbox">
                            <label><input type="checkbox" name="area_inte[]" id="area_inte[]" value="RECURSOS">Recursos Humanos</label>
                          </div>
                          <div class="checkbox">
                            <label><input type="checkbox" name="area_inte[]" id="area_inte[]" value="ALMACEN">Almacén</label>
                          </div>
                          </div>
                          <div class="col-xs-12 col-md-3" style="margin-top: 1.4em;">
                          <div class="checkbox">
                            <label><input type="checkbox" name="area_inte[]" id="area_inte[]" value="SEGURIDAD HIGIENE Y AMBIENTE">Seguridad Higiene y Ambiente</label>
                          </div>
                          <div class="checkbox">
                            <label><input type="checkbox" name="area_inte[]" id="area_inte[]" value="SISTEMA DE GESTION DE LA CALIDAD">Sistema de Gestión de la Calidad</label>
                          </div>
                          <div class="checkbox">
                            <label><input type="checkbox" name="area_inte[]" id="area_inte[]" value="PRODUCCION">Producción</label>
                          </div>
                          <div class="checkbox">
                            <label><input type="checkbox" name="area_inte[]" id="area_inte[]" value="MECANICA">Mecánica</label>
                          </div>
                          <div class="checkbox">
                            <label><input type="checkbox" name="area_inte[]" id="area_inte[]" value="ASISTENCIA TECNICA">Asistencia Técnica</label>
                          </div>
                          </div>
                        </div>
                        <hr>
                        <div class="form-group row">

                          <div class="col-xs-12 col-md-3">
                            <p style="margin-bottom: -0.5em;"><label for=""><span style="color: red; font-size: 17px;">*</span> Conocimiento Ofimatico:</label></p>
                          <div class="checkbox">
                            <label><input type="checkbox" name="area_ofim[]" id="area_ofim[]" value="WORD">Word</label>
                          </div>
                          <div class="checkbox">
                            <label><input type="checkbox" name="area_ofim[]" id="area_ofim[]" value="EXCEL">Excel</label>
                          </div>
                          <div class="checkbox">
                            <label><input type="checkbox" name="area_ofim[]" id="area_ofim[]" value="POWER POINT">Power Point</label>
                          </div>
                          <div class="checkbox">
                            <label><input type="checkbox" name="area_ofim[]" id="area_ofim[]" value="OUTLOOK">Outlook</label>
                          </div>
                          <div class="checkbox">
                            <label><input type="checkbox" name="area_ofim[]" id="area_ofim[]" value="PROJECT">Project</label>
                          </div>
                          </div>
                        </div>

                        <div class="form-group row">
                          <div class="col-xs-12 col-md-3">
                            <label for="sueldo_aspi">Sueldo al que Aspira:</label>
                            <input class="form-control input-sm" id="sueldo_aspi" name="sueldo_aspi" type="text" placeholder="0.000,00">
                          </div>
                          <div class="col-xs-12 col-md-3">
                            <label for="fecha_dispo"><span style="color: red; font-size: 17px;">*</span> Fecha de Disponibilidad:</label>
                            <input class="form-control input-sm" id="fecha_dispo" name="fecha_dispo" type="date" >
                          </div>
                          <div class="col-xs-12 col-md-3">
                            <label for="sexo"><span style="color: red; font-size: 17px;">*</span> Limitacion Geografica:</label>
                            <select name="limitacion_geo" id="limitacion_geo" class="form-control input-sm">
                              <option value="">Seleccione</option>
                              <option value="SI"> Si</option>
                              <option value="NO">No</option>
                            </select>
                          </div>
                        </div>
                        <div class="form-group">
                            <strong>(<span style="color: red; font-size: 17px;">*</span>): Campos obligatorios</strong>
                        </div>
                      </div>
                      <!-- pestaña vehiculos-->
                      <div id="menu6" class="tab-pane fade">
                        <h3>Datos de Vehiculo</h3>
                        <div class="form-group row">
                          <div class="col-xs-12 col-md-2">
                            <p style="margin-bottom: -0.1em;"><label for="vehiculo"><span style="color: red; font-size: 17px;">*</span> ¿Posee Vehiculo?:</label></p>
                            <label class="radio-inline"><input type="radio" id="vehiculo" name="vehiculo" value="SI" onclick="vehiculoOff(this.value)">Si</label>
                            <label class="radio-inline"><input type="radio" id="vehiculo" name="vehiculo" value="NO" onclick="vehiculoOff(this.value)">No</label>
                          </div>
                        </div>

                        <div class="form-group row">
                          <div class="col-xs-12 col-md-3">
                            <label for="marca_vehiculo">Marca:</label>
                            <input class="form-control input-sm" id="marca_vehiculo" name="marca_vehiculo" type="text" placeholder="Ejemplo: Ford" onkeypress="return SoloLetras(event);">
                          </div>
                          <div class="col-xs-12 col-md-3">
                            <label for="modelo_vehiculo">Modelo:</label>
                            <input class="form-control input-sm" id="modelo_vehiculo" name="modelo_vehiculo" type="text" placeholder="Ejemplo: Blazer" onkeypress="return SoloLetras(event);">
                          </div>
                          <div class="col-xs-12 col-md-3">
                            <label for="version_vehiculo">Versión:</label>
                            <input class="form-control input-sm" id="version_vehiculo" name="version_vehiculo" type="text" placeholder="Nombre">
                          </div>
                        </div>

                        <div class="form-group row">
                          <div class="col-xs-12 col-md-3">
                            <p style="margin-bottom: -0.1em;"><label for="transmicion">Tipo de Transmisión:</label></p>
                            <label class="radio-inline"><input type="radio" id="transmicionauto" name="transmicion" value="AUTOMATICO">Automatico</label>
                            <label class="radio-inline"><input type="radio" id="transmicionsincro" name="transmicion" value="SINCRONICO">Sincronico</label>
                          </div>
                          <div class="col-xs-12 col-md-1">
                            <label for="cant_cilindros">Cilindros:</label>
                            <input class="form-control input-sm" id="cant_cilindros" name="cant_cilindros" type="text" placeholder="00" onkeypress="return SoloNumeros(event);">
                          </div>
                        </div>

                        <div class="form-group row">
                          <div class="col-xs-12 col-md-3">
                            <p style="margin-bottom: -0.1em;"><label for="titulo_registro">Titulo del Registro:</label></p>
                            <label class="radio-inline"><input type="radio" id="titulo_registrosi" name="titulo_registro" value="SI">Si</label>
                            <label class="radio-inline"><input type="radio" id="titulo_registrono" name="titulo_registro" value="NO">No</label>
                          </div>
                          <div class="col-xs-12 col-md-1">
                            <label for="ano_vehiculo">Año:</label>
                            <input class="form-control input-sm" id="ano_vehiculo" name="ano_vehiculo" type="text" placeholder="0000" onkeypress="return SoloNumeros(event);">
                          </div>
                          <div class="col-xs-12 col-md-2">
                            <label for="color_vehiculo">Color:</label>
                            <input class="form-control input-sm" id="color_vehiculo" name="color_vehiculo" type="text" placeholder="Ejemplo: Negro" onkeypress="return SoloLetras(event);">
                          </div>
                          <div class="col-xs-12 col-md-3">
                            <label for="uso">Tipo de Vehiculo:</label>
                            <select name="uso" id="uso" class="form-control input-sm">
                              <option value="">Seleccione</option>
                              <option value="PASEO">Paseo</option>
                              <option value="DEPORTE">Deporte</option>
                              <option value="TRABAJO">Trabajo</option>
                              <option value="OTROS">Otros</option>
                            </select>
                          </div>

                        </div>

                        <div class="form-group row">
                          <div class="col-xs-12 col-md-1">
                            <label for="num_placa">Placa N°:</label>
                            <input class="form-control input-sm" id="num_placa" name="num_placa" type="text" placeholder="ADV-00V">
                          </div>
                          <div class="col-xs-12 col-md-2">
                            <label for="num_motor">Serial del Motor:</label>
                            <input class="form-control input-sm" id="num_motor" name="num_motor" type="text" placeholder="000000000000" >
                          </div>
                          <div class="col-xs-12 col-md-3">
                            <label for="num_carroceria">Serial de Carroceria:</label>
                            <input class="form-control input-sm" id="num_carroceria" name="num_carroceria" type="text" placeholder="000000000000">
                          </div>
                        </div>
                        <div class="form-group">
                            <strong>(<span style="color: red; font-size: 17px;">*</span>): Campos obligatorios</strong>
                        </div>
                      </div>
                      <!-- pestaña condicion fisica-->
                      <div id="menu7" class="tab-pane fade in">
                        <h3>Condiciones Fisicas</h3>
                        <div class="form-group">
                          <table class="table" id="tabla_defecto_fisico">
                            <thead>
                              <th>Defecto Fisico o Problema de Salud</th>
                              <th>¿Esta en Tratamiento?</th>
                              <th>Especifique</th>
                            </thead>
                            <tr>
                              <td>
                                <input type="text" name="defecto_fisico[]" id="defecto_fisico[]" placeholder="Nombre del Problema" class="form-control name_list input-sm" onkeypress="return SoloLetras(event);"/>
                              </td>
                              <td>
                              <label class="radio-inline"><input type="radio" id="tratamiento" name="tratamiento[]" value="SI">SI</label>
                              <label class="radio-inline"><input type="radio" id="tratamiento" name="tratamiento[]" value="NO">NO</label>
                              </td>
                            <td>
                              <input type="text" name="detalle_tratamiento[]" id="detalle_tratamiento[]" placeholder="Explique" class="form-control name_list input-sm"/>
                            </td>                            
                            <td>
                              <button type="button" name="add_defecto" id="add_defecto" class="btn btn-success btn-sm"><i class="fa fa-plus"></i></button>
                            </td>
                          </tr>
                        </table>
                        <table class="table" id="tabla_lesiones">
                            <thead>
                              <th>Afecciones / Operaciones / Lesiones</th>
                              <th>duración</th>
                              <th>Estado Actual</th>
                            </thead>
                            <tr>
                              <td>
                                <input type="text" name="lesiones[]" id="lesiones[]" placeholder="Nombre de alguna lesion, Operacion o Afección" class="form-control name_list input-sm" onkeypress="return SoloLetras(event);"/>
                              </td>
                              <td>
                                <input type="text" name="duracion_lession[]" id="duracion_lession[]" placeholder="Años/Meses" class="form-control name_list input-sm"/>
                              </td>
                            <td>
                              <input type="text" name="estado_lesion[]" id="estado_lesion[]" placeholder="Estado de la lesion" class="form-control name_list input-sm" onkeypress="return SoloLetras(event);"/>
                            </td>                            
                            <td>
                              <button type="button" name="add_lesion" id="add_lesion" class="btn btn-success btn-sm"><i class="fa fa-plus"></i></button>
                            </td>
                          </tr>
                        </table>
                        </div>
                        
                      </div>
                      <!-- pestaña experiencia laboral-->
                      <div id="menu8" class="tab-pane fade in">
                        <h4>Experiencia Laboral</h4>
                        <p>Suministre Información sobre su empleo actual y anteriores en orden Descendente</p>
                        <button type="button" name="add_grado" id="add_grado" class="btn btn-success btn-sm"><i class="fa fa-plus"></i> Agregar otro Empleo</button>
                        <hr>
                        
                        <div class="form-group" id="container_grado">
                          <div class="row">
                            <div class="col-md-12">
                              <label for="">TRABAJO N°: 1</label>
                            </div>
                            <div class="col-xs-12 col-md-4">
                              <label for="nom_empresa"><span style="color: red; font-size: 17px;">*</span> Nombre Empresa:</label>
                              <input type="text" name="nom_empresa[]" placeholder="Nombre de la institución" class="form-control name_list input-sm" onkeypress="return SoloLetras(event);"/>
                            </div>
                            <div class="col-xs-12 col-md-3">
                              <label for="nom_empresa"><span style="color: red; font-size: 17px;">*</span> Naturaleza del Trabajo:</label>
                              <input type="text" name="natu_trabajo[]" placeholder="Cargo" class="form-control name_list input-sm" onkeypress="return SoloLetras(event);"/>
                            </div>
                            <div class="col-xs-12 col-md-2">
                              <label for="nom_empresa"><span style="color: red; font-size: 17px;">*</span> Desde:</label>
                              <input type="date" name="fecha_desde[]" class="form-control name_list input-sm" />
                            </div>
                            <div class="col-xs-12 col-md-2">
                              <label for="nom_empresa"><span style="color: red; font-size: 17px;">*</span> Hasta:</label>
                              <input type="date" name="fecha_hasta[]" class="form-control name_list input-sm" />
                              <br>
                            </div>
                            <div class="col-xs-12 col-md-3">
                              <label for="nom_empresa">Supervisor:</label>
                              <input type="text" name="supervisor_empresa[]" placeholder="Nombre" class="form-control name_list input-sm" onkeypress="return SoloLetras(event);"/>
                            </div>
                            <div class="col-xs-12 col-md-2">
                              <label for="nom_empresa"><span style="color: red; font-size: 17px;">*</span> Sueldo Inicial:</label>
                              <input type="text" name="saldo_inicial[]" placeholder="00.000,000 BsS" class="form-control name_list input-sm" />
                            </div>
                            <div class="col-xs-12 col-md-2">
                              <label for="nom_empresa"><span style="color: red; font-size: 17px;">*</span> Sueldo Final:</label>
                              <input type="text" name="saldo_final[]" placeholder="00.000,000 BsS" class="form-control name_list input-sm" />
                            </div>
                            <div class="col-xs-12 col-md-4">
                              <label for="nom_empresa"><span style="color: red; font-size: 17px;">*</span> Razón de retiro:</label>
                              <input type="text" name="retiro_empresa[]" placeholder="Motivo" class="form-control name_list input-sm" onkeypress="return SoloLetras(event);"/>
                            </div>
                            <div class="col-md-12">
                              <hr>
                            </div>
                          </div>                          
                        </div>
                        <div class="form-group">
                            <strong>(<span style="color: red; font-size: 17px;">*</span>): Campos obligatorios</strong>
                        </div>
                      </div>
                      <!-- pestaña referencia personales-->
                      <div id="menu9" class="tab-pane fade in">
                        <h4>Ingrese un minimo de 3 Referencias Personales</h4>
                        <div class="form-group">
                          <table class="table" id="tabla_referencias">
                            <thead>
                              <th><span style="color: red; font-size: 17px;">*</span> Nombre y Apellido</th>
                              <th><span style="color: red; font-size: 17px;">*</span> Telefono</th>
                              <th><span style="color: red; font-size: 17px;">*</span> Ocupación</th>
                              <th><span style="color: red; font-size: 17px;">*</span> Compañia</th>
                            </thead>
                            <tr>
                              <td>
                                <input type="text" name="nom_ape_refe[]" id="nom_ape_refe[]" placeholder="nombre y apellido" class="form-control name_list input-sm" onkeypress="return SoloLetras(event);"/>
                              </td>
                              <td>
                                <input type="text" name="telefono_refe[]" id="telefono_refe[]" placeholder="0000000" class="form-control name_list input-sm" onkeypress="return SoloNumeros(event);"/>
                              </td>
                            <td>
                              <input type="text" name="ocupacion_refe[]" id="ocupacion_refe[]" placeholder="Ejemplo: Ingeniero" class="form-control name_list input-sm" onkeypress="return SoloLetras(event);"/>
                            </td>
                            <td>
                              <input type="text" name="compania_refe[]" id="compañia_refe[]" placeholder="Nombre de la Compañia" class="form-control name_list input-sm" onkeypress="return SoloLetras(event);"/>
                            </td>
                            
                            <td>
                              <button type="button" name="add_refe" id="add_refe" class="btn btn-success btn-sm"><i class="fa fa-plus"></i></button>
                            </td>
                          </tr>
                        </table>
                        </div>
                        <div class="form-group">
                            <strong>(<span style="color: red; font-size: 17px;">*</span>): Campos obligatorios</strong>
                        </div>
                      </div>
                       <!-- pestaña consignacion de datos-->
                       <div id="menu10" class="tab-pane fade in">
                        <h4>Documentos obligatorios en el expediente del ingresado</h4>
                        <div class="form-group">
                          <table class="table" id="tabla_referencias">
                            <thead>
                            <th>N°</th>
                              <th>Documento</th>
                              <th>Aplica</th>
                              <th>Consignado</th>
                              <th>Observación</th>
                              <th>Archivo</th>
                            </thead>
                            
                            <tr>
                              <td>1</td>
                              <td>
                                <p><b>Sintesis Curricular</b> </p>
                              </td>
                              <td>
                                <label class="radio-inline"><input type="radio" id="aplica" name="aplica[]" value="SI">Si</label>
                                <label class="radio-inline"><input type="radio" id="aplica" name="aplica[]" value="NO">No</label>
                              </td>
                              <td>
                                <label class="radio-inline"><input type="radio" id="consignado" name="consignado[]" value="SI">Si</label>
                                <label class="radio-inline"><input type="radio" id="consignado" name="consignado[]" value="NO">No</label>
                              </td>
                              <td>
                                <input type="text" name="observacion[]" id="observacion[]" placeholder="Alguna observación" class="form-control name_list input-sm" />
                              </td>
                              <td>
                                <input type="file" name="file[]" id="file[]" placeholder="Documento" class="form-control name_list input-sm" />
                              </td>
                            </tr>
                            <tr>
                              <td>2</td>
                              <td>
                                <p><b>Copia de la C.I (Legible y Vigente)</b></p>
                              </td>
                              <td>
                                <label class="radio-inline"><input type="radio" id="aplica" name="aplica[]" value="SI">Si</label>
                                <label class="radio-inline"><input type="radio" id="aplica" name="aplica[]" value="NO">No</label>
                              </td>
                              <td>
                                <label class="radio-inline"><input type="radio" id="consignado" name="consignado[]" value="SI">Si</label>
                                <label class="radio-inline"><input type="radio" id="consignado" name="consignado[]" value="NO">No</label>
                              </td>
                              <td>
                                <input type="text" name="observacion[]" id="observacion[]" placeholder="Alguna observación" class="form-control name_list input-sm" />
                              </td>
                              <td>
                                <input type="file" name="file[]" id="file[]" placeholder="Documento" class="form-control name_list input-sm" />
                              </td>
                            </tr>
                            <tr>
                              <td>3</td>
                              <td>
                                <p><b>RIF (Registro de informacion fiscal)</b> </p>
                              </td>
                              <td>
                                <label class="radio-inline"><input type="radio" id="aplica" name="aplica[]" value="SI">Si</label>
                                <label class="radio-inline"><input type="radio" id="aplica" name="aplica[]" value="NO">No</label>
                              </td>
                              <td>
                                <label class="radio-inline"><input type="radio" id="consignado" name="consignado[]" value="SI">Si</label>
                                <label class="radio-inline"><input type="radio" id="consignado" name="consignado[]" value="NO">No</label>
                              </td>
                              <td>
                                <input type="text" name="observacion[]" id="observacion[]" placeholder="Alguna observación" class="form-control name_list input-sm" />
                              </td>
                              <td>
                                <input type="file" name="file[]" id="file[]" placeholder="Documento" class="form-control name_list input-sm" />
                              </td>
                            </tr>
                            <tr>
                              <td>4</td>
                              <td>
                                <p><b>Una (1) Foto Fondo Blanco</b> </p>
                              </td>
                              <td>
                                <label class="radio-inline"><input type="radio" id="aplica" name="aplica[]" value="SI">Si</label>
                                <label class="radio-inline"><input type="radio" id="aplica" name="aplica[]" value="NO">No</label>
                              </td>
                              <td>
                                <label class="radio-inline"><input type="radio" id="consignado" name="consignado[]" value="SI">Si</label>
                                <label class="radio-inline"><input type="radio" id="consignado" name="consignado[]" value="NO">No</label>
                              </td>
                              <td>
                                <input type="text" name="observacion[]" id="observacion[]" placeholder="Alguna observación" class="form-control name_list input-sm" />
                              </td>
                              <td>
                                <input type="file" name="file[]" id="file[]" placeholder="Documento" class="form-control name_list input-sm" />
                              </td>
                            </tr>
                            <tr>
                              <td>5</td>
                              <td>
                                <p><b>Constancia de Estudio (Vigente)</b> </p>
                              </td>
                              <td>
                                <label class="radio-inline"><input type="radio" id="aplica" name="aplica[]" value="SI">Si</label>
                                <label class="radio-inline"><input type="radio" id="aplica" name="aplica[]" value="NO">No</label>
                              </td>
                              <td>
                                <label class="radio-inline"><input type="radio" id="consignado" name="consignado[]" value="SI">Si</label>
                                <label class="radio-inline"><input type="radio" id="consignado" name="consignado[]" value="NO">No</label>
                              </td>
                              <td>
                                <input type="text" name="observacion[]" id="observacion[]" placeholder="Alguna observación" class="form-control name_list input-sm" />
                              </td>
                              <td>
                                <input type="file" name="file[]" id="file[]" placeholder="Documento" class="form-control name_list input-sm" />
                              </td>
                            </tr>
                            <tr>
                              <td>6</td>
                              <td>
                                <p><b>Copia de Titulo de Bachiller, T.S.U y/o Universitario</b> </p>
                              </td>
                              <td>
                                <label class="radio-inline"><input type="radio" id="aplica" name="aplica[]" value="SI">Si</label>
                                <label class="radio-inline"><input type="radio" id="aplica" name="aplica[]" value="NO">No</label>
                              </td>
                              <td>
                                <label class="radio-inline"><input type="radio" id="consignado" name="consignado[]" value="SI">Si</label>
                                <label class="radio-inline"><input type="radio" id="consignado" name="consignado[]" value="NO">No</label>
                              </td>
                              <td>
                                <input type="text" name="observacion[]" id="observacion[]" placeholder="Alguna observación" class="form-control name_list input-sm" />
                              </td>
                              <td>
                                <input type="file" name="file[]" id="file[]" placeholder="Documento" class="form-control name_list input-sm" />
                              </td>
                            </tr>
                            <tr>
                              <td>7</td>
                              <td>
                                <p><b>Copia de Certificado de Cursos Realizados</b> </p>
                              </td>
                              <td>
                                <label class="radio-inline"><input type="radio" id="aplica" name="aplica[]" value="SI">Si</label>
                                <label class="radio-inline"><input type="radio" id="aplica" name="aplica[]" value="NO">No</label>
                              </td>
                              <td>
                                <label class="radio-inline"><input type="radio" id="consignado" name="consignado[]" value="SI">Si</label>
                                <label class="radio-inline"><input type="radio" id="consignado" name="consignado[]" value="NO">No</label>
                              </td>
                              <td>
                                <input type="text" name="observacion[]" id="observacion[]" placeholder="Alguna observación" class="form-control name_list input-sm" />
                              </td>
                              <td>
                                <input type="file" name="file[]" id="file[]" placeholder="Documento" class="form-control name_list input-sm" />
                              </td>
                            </tr>
                            <tr>
                              <td>8</td>
                              <td>
                                <p><b>Ultima Constancia de Trabajo indicando </b></p>
                                <p><b>último sueldo, cargo</b></p>
                              </td>
                              <td>
                                <label class="radio-inline"><input type="radio" id="aplica" name="aplica[]" value="SI">Si</label>
                                <label class="radio-inline"><input type="radio" id="aplica" name="aplica[]" value="NO">No</label>
                              </td>
                              <td>
                                <label class="radio-inline"><input type="radio" id="consignado" name="consignado[]" value="SI">Si</label>
                                <label class="radio-inline"><input type="radio" id="consignado" name="consignado[]" value="NO">No</label>
                              </td>
                              <td>
                                <input type="text" name="observacion[]" id="observacion[]" placeholder="Alguna observación" class="form-control name_list input-sm" />
                              </td>
                              <td>
                                <input type="file" name="file[]" id="file[]" placeholder="Documento" class="form-control name_list input-sm" />
                              </td>
                            </tr>
                            <tr>
                              <td>9</td>
                              <td>
                                <p><b>Constancia de Trabajos anteriores</b> </p>
                              </td>
                              <td>
                                <label class="radio-inline"><input type="radio" id="aplica" name="aplica[]" value="SI">Si</label>
                                <label class="radio-inline"><input type="radio" id="aplica" name="aplica[]" value="NO">No</label>
                              </td>
                              <td>
                                <label class="radio-inline"><input type="radio" id="consignado" name="consignado[]" value="SI">Si</label>
                                <label class="radio-inline"><input type="radio" id="consignado" name="consignado[]" value="NO">No</label>
                              </td>
                              <td>
                                <input type="text" name="observacion[]" id="observacion[]" placeholder="Alguna observación" class="form-control name_list input-sm" />
                              </td>
                              <td>
                                <input type="file" name="file[]" id="file[]" placeholder="Documento" class="form-control name_list input-sm" />
                              </td>
                            </tr>
                            <tr>
                              <td>10</td>
                              <td>
                                <p><b>Copia de Licencia de Conducir</b></p>
                                <p><b>(Motorizados, Transportista, Vendedores)</b></p>
                              </td>
                              <td>
                                <label class="radio-inline"><input type="radio" id="aplica" name="aplica[]" value="SI">Si</label>
                                <label class="radio-inline"><input type="radio" id="aplica" name="aplica[]" value="NO">No</label>
                              </td>
                              <td>
                                <label class="radio-inline"><input type="radio" id="consignado" name="consignado[]" value="SI">Si</label>
                                <label class="radio-inline"><input type="radio" id="consignado" name="consignado[]" value="NO">No</label>
                              </td>
                              <td>
                                <input type="text" name="observacion[]" id="observacion[]" placeholder="Alguna observación" class="form-control name_list input-sm" />
                              </td>
                              <td>
                                <input type="file" name="file[]" id="file[]" placeholder="Documento" class="form-control name_list input-sm" />
                              </td>
                            </tr>
                            <tr>
                              <td>11</td>
                              <td>
                                <p><b>Copia de Documentos de Propiedad del Vehiculo </b></p>
                                <p><b>(Motorizados, Vendedores)</b></p>
                              </td>
                              <td>
                                <label class="radio-inline"><input type="radio" id="aplica" name="aplica[]" value="SI">Si</label>
                                <label class="radio-inline"><input type="radio" id="aplica" name="aplica[]" value="NO">No</label>
                              </td>
                              <td>
                                <label class="radio-inline"><input type="radio" id="consignado" name="consignado[]" value="SI">Si</label>
                                <label class="radio-inline"><input type="radio" id="consignado" name="consignado[]" value="NO">No</label>
                              </td>
                              <td>
                                <input type="text" name="observacion[]" id="observacion[]" placeholder="Alguna observación" class="form-control name_list input-sm" />
                              </td>
                              <td>
                                <input type="file" name="file[]" id="file[]" placeholder="Documento" class="form-control name_list input-sm" />
                              </td>
                            </tr>
                            <tr>
                              <td>12</td>
                              <td>
                                <p><b>Retiro del SSO Antigua Forma 14-03</b> </p>
                              </td>
                              <td>
                                <label class="radio-inline"><input type="radio" id="aplica" name="aplica[]" value="SI">Si</label>
                                <label class="radio-inline"><input type="radio" id="aplica" name="aplica[]" value="NO">No</label>
                              </td>
                              <td>
                                <label class="radio-inline"><input type="radio" id="consignado" name="consignado[]" value="SI">Si</label>
                                <label class="radio-inline"><input type="radio" id="consignado" name="consignado[]" value="NO">No</label>
                              </td>
                              <td>
                                <input type="text" name="observacion[]" id="observacion[]" placeholder="Alguna observación" class="form-control name_list input-sm" />
                              </td>
                              <td>
                                <input type="file" name="file[]" id="file[]" placeholder="Documento" class="form-control name_list input-sm" />
                              </td>
                            </tr>
                            <tr>
                              <td>13</td>
                              <td>
                                <p><b>Inscripción al Registro Militar</b> </p>
                              </td>
                              <td>
                                <label class="radio-inline"><input type="radio" id="aplica" name="aplica[]" value="SI">Si</label>
                                <label class="radio-inline"><input type="radio" id="aplica" name="aplica[]" value="NO">No</label>
                              </td>
                              <td>
                                <label class="radio-inline"><input type="radio" id="consignado" name="consignado[]" value="SI">Si</label>
                                <label class="radio-inline"><input type="radio" id="consignado" name="consignado[]" value="NO">No</label>
                              </td>
                              <td>
                                <input type="text" name="observacion[]" id="observacion[]" placeholder="Alguna observación" class="form-control name_list input-sm" />
                              </td>
                              <td>
                                <input type="file" name="file[]" id="file[]" placeholder="Documento" class="form-control name_list input-sm" />
                              </td>
                            </tr>
                            <tr>
                              <td>14</td>
                              <td>
                                <p><b>Registro del Adolecente ante el (CPNA)</b> </p>
                                <p><b>Consejo de Proteccion de niños, niñas, y adolecentes</b></p>
                              </td>
                              <td>
                                <label class="radio-inline"><input type="radio" id="aplica" name="aplica[]" value="SI">Si</label>
                                <label class="radio-inline"><input type="radio" id="aplica" name="aplica[]" value="NO">No</label>
                              </td>
                              <td>
                                <label class="radio-inline"><input type="radio" id="consignado" name="consignado[]" value="SI">Si</label>
                                <label class="radio-inline"><input type="radio" id="consignado" name="consignado[]" value="NO">No</label>
                              </td>
                              <td>
                                <input type="text" name="observacion[]" id="observacion[]" placeholder="Alguna observación" class="form-control name_list input-sm" />
                              </td>
                              <td>
                                <input type="file" name="file[]" id="file[]" placeholder="Documento" class="form-control name_list input-sm" />
                              </td>
                            </tr>
                            
                        </table>
                        
                        </div>
                      </div>
                      <!-- pestaña referencia personales-->
                      <div id="menu11" class="tab-pane fade in">
                        <h4>Datos Finales</h4>
                        <hr>
                        <div class="form-group">
                          <div class="row">
                            <div class="col-xs-12 col-md-3">
                              <label for="municipio"><span style="color: red; font-size: 17px;">*</span> Tipo de Ingreso:</label>
                              <select name="tipo_ingreso" id="tipo_ingreso" class="form-control input-sm">
                                <option value="">Seleccione</option>
                                <?php
                                $sql = "SELECT * FROM tingreso ORDER BY ingreso ASC";
                                $query = mysqli_query($link,$sql);
                                  while ($row = mysqli_fetch_array($query)) {
                                    echo '<option value="'.$row['idingreso'].'">'.$row['ingreso'].'</option>'
                                ?>
                              
                            <?php }?>
                              </select>
                            </div>
                          </div>
                        </div>
                        <hr>
                        <div class="row">
                          <div class="col-md-12">
                          <p><strong>Declaro que la información suministrada es veraz y autorizo a INQUIPORT S.A a su verificación.</strong></p>
                          <hr>
                          <button type="button" name="enviarP" id="enviarP" class="btn btn-success btn-sm"><i class="fa fa-plus"></i> Registrar</button>
                          </div>
                        </div>
                        <div class="form-group">
                            <strong>(<span style="color: red; font-size: 17px;">*</span>): Campos obligatorios</strong>
                        </div>
                      </div>

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
  <!-- 
  <script src="../assets/js/addChil.js"></script>
  <script src="../assets/js/add_part_sociales.js"></script>
  <script src="../assets/js/add_dist_academicas.js"></script>
  <script src="../assets/js/add_grado_inst.js"></script>
  <script src="../assets/js/add_referencias.js"></script>
  <script src="../assets/js/add_experiencia.js"></script>
  -->
  <script src="../assets/js/add_lessiones_defectos.js"></script>
  <script src="../assets/js/newPerson.js"></script>
  <script src="../assets/js/disabledInputs.js"></script>
  <script src="../assets/js/calcularEdad.js"></script>
  <script src="../assets/js/disabledOptions.js"></script>
  <script src="../assets/js/municipio.js"></script>
  <script src="../assets/js/validaciones.js"></script>


</body>
</html>
<!-- jQuery 2.1.4 -->