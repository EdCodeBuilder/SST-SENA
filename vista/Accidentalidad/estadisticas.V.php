<?php
session_start();
$_SESSION['ruta_formulario'] = basename(__FILE__);
require("../../componente/libreria/libreria.php");
?>
<script src="../../js/accidentalidad/estadisticas.js"></script>

<head>
    <title>Estadisticas</title>
</head>

<body onload="Enviar('CONSULTAR',null)">
    <form name="frmEstadisticas" id="frmEstadisticas">
        <div class="margen" align="center">
            <label>
                <h1>Estadisticas</h1>
            </label>
            <div class="container form-group">
                <div class="row justify-content-sm-center">
                    <div class="col-12 col-sm-6">
                        <input type="hidden" name="hidIdPersona" id="hidIdPersona" value="">
                        <label class="col-form-label">Persona</label>
                        <input type="text" name="txtPersona" id="txtPersona" value="" class="caja form-control" placeholder="Persona" maxlength="100">
                    </div>
                </div>
                <div class="row">
                    <div class="col-12 col-sm-4">
                        <input type="hidden" name="hidIdEstadisticas" id="hidIdEstadisticas" value="">
                        <label for="cmbVinculacion" class="col-form-label">Tipo de vinculación</label>
                        <select class="lista form-control" id="cmbVinculacion">
                            <option value="" selected="selected">--Seleccione--</option>
                            <option value="1">Planta</option>
                            <option value="0">Independiente</option>
                        </select>
                    </div>
                    <div class="col-12 col-sm-4">
                        <label for="cmbCentroFormacion" class="col-form-label">Centro de formación</label>
                        <select class="lista form-control" id="cmbCentroFormacion">
                            <option value="" selected="selected">--Seleccione--</option>
                            <option value="0">Despacho Regional Huila</option>
                            <option value="1">Centro de la Industrial, la Empresa y los Servicios</option>
                            <option value="2">Centro de Formación Agroindustrial</option>
                            <option value="3">Centro Agroempresarial y de Desarrollo Pecuario del Huila</option>
                            <option value="4">Centro de Gestión y Desarrollo Sostenible Sur Colombiano</option>
                            <option value="5">Centro de Desarrollo Agroempresarial y Turístico del Huila</option>
                        </select>
                    </div>
                    <div class="col-12 col-sm-4">
                        <label for="cmbTipoAccidente" class="col-form-label">Tipo de accidente</label>
                        <select class="lista form-control" id="cmbTipoAccidente">
                            <option value="" selected="selected">--Seleccione--</option>
                            <option value="0">Propios del Trabajo</option>
                            <option value="1">Deportivos</option>
                            <option value="2">Tránsito</option>
                            <option value="3">Violencia</option>
                        </select>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12 col-sm-4">
                        <label class="col-form-label">Fecha de accidente</label>
                        <input type="date" name="datFechaAccidente" id="datFechaAccidente" value="" class="caja form-control" placeholder="Fecha de accidente">
                    </div>
                    <div class="col-12 col-sm-4">
                        <label for="cmbDiaAccidente" class="col-form-label">Dia de la semana del accidente</label>
                        <select class="lista form-control" id="cmbDiaAccidente">
                            <option value="" selected="selected">--Seleccione--</option>
                            <option value="0">Lunes</option>
                            <option value="1">Martes</option>
                            <option value="2">Miércoles</option>
                            <option value="3">Jueves</option>
                            <option value="4">Viernes</option>
                            <option value="5">Sábado</option>
                            <option value="6">Domingo</option>
                        </select>
                    </div>
                    <div class="col-12 col-sm-4">
                        <label class="col-form-label">Días de incapacidad</label>
                        <input type="number" name="numDiasIncapacidad" id="numDiasIncapacidad" value="" class="caja form-control" placeholder="Días de incapacidad">
                    </div>
                </div>
                <div class="row">
                    <div class="col-12 col-sm-4">
                        <label class="col-form-label">Fecha de reporte a EPS</label>
                        <input type="date" name="datFechaReporteEps" id="datFechaReporteEps" value="" class="caja form-control" placeholder="Fecha de reporte a EPS">
                    </div>
                    <div class="col-12 col-sm-4">
                        <label class="col-form-label">Fecha de reporte a Oficina</label>
                        <input type="date" name="datFechaReporteOficina" id="datFechaReporteOficina" value="" class="caja form-control" placeholder="Fecha de reporte a Oficina">
                    </div>
                    <div class="col-12 col-sm-4">
                        <label class="col-form-label">Fecha de reporte a ARL</label>
                        <input type="date" name="datFechaReporteArl" id="datFechaReporteArl" value="" class="caja form-control" placeholder="Fecha de reporte a ARL">
                    </div>
                </div>
                <div class="row">
                    <div class="col-12 col-sm-4">
                        <label class="col-form-label">Días cargados</label>
                        <input type="number" name="numDiasCargados" id="numDiasCargados" value="" class="caja form-control" placeholder="Días cargados">
                    </div>
                    <div class="col-12 col-sm-4">
                        <label class="col-form-label">Diagnóstico</label>
                        <textarea class="caja form-control" name="txtDiagnostico" id="txtDiagnostico" rows="5" placeholder="Diagnóstico" maxlength="100"></textarea>
                    </div>
                    <div class="col-12 col-sm-4">
                        <label class="col-form-label">Descripción AT</label>
                        <textarea class="caja form-control" name="txtDescripcionAt" id="txtDescripcionAt" rows="5" placeholder="Descripción  AT" maxlength="1000"></textarea>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12 col-sm-4">
                        <label for="cmbLugarAccidente" class="col-form-label">Lugar del accidente</label>
                        <select class="lista form-control" id="cmbLugarAccidente">
                            <option value="" selected="selected">--Seleccione--</option>
                            <option value="0">Dentro de la empresa</option>
                            <option value="1">Fuera de la empresa</option>
                            <option value="2">Otra empresa</option>
                        </select>
                    </div>
                    <div class="col-12 col-sm-4">
                        <label for="cmbSitioAccidente" class="col-form-label">Sitio exacto del accidente</label>
                        <select class="lista form-control" id="cmbSitioAccidente">
                            <option value="" selected="selected">--Seleccione--</option>
                            <option value="0">Almacén o depósito</option>
                            <option value="1">Áreas de producción</option>
                            <option value="2">Áreas recreativas o deportivas</option>
                            <option value="3">Escaleras</option>
                            <option value="4">Parqueaderos o áreas de circulación vehicular</option>
                            <option value="5">Oficinas</option>
                            <option value="6">Corredores, Pasillos</option>
                            <option value="7">Otro</option>
                        </select>
                    </div>
                    <div class="col-12 col-sm-4">
                        <label for="cmbRiesgoLocativo" class="col-form-label">Riesgo locativo</label>
                        <select class="lista form-control" id="cmbRiesgoLocativo">
                            <option value="" selected="selected">--Seleccione--</option>
                            <option value="0">Locativo</option>
                            <option value="1">Eléctrico</option>
                            <option value="2">Vial</option>
                            <option value="3">Natural</option>
                            <option value="4">Tecnológico</option>
                            <option value="5">Otro</option>
                        </select>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12 col-sm-4">
                        <label class="col-form-label">Tipo de lesion</label>
                        <input type="text" name="txtTipoLesion" id="txtTipoLesion" value="" class="caja form-control" placeholder="Tipo de lesion" maxlength="100">
                    </div>
                    <div class="col-12 col-sm-4">
                        <label class="col-form-label">Parte afectada</label>
                        <input type="text" name="txtParteAfectada" id="txtParteAfectada" value="" class="caja form-control" placeholder="Parte afectada" maxlength="100">
                    </div>
                    <div class="col-12 col-sm-4">
                        <label class="col-form-label">Mecanismo del accidente</label>
                        <input type="text" name="txtMecanismoAccidente" id="txtMecanismoAccidente" value="" class="caja form-control" placeholder="Mecanismo del accidente" maxlength="100">
                    </div>
                </div>
                <div class="row">
                    <div class="col-12 col-sm-4">
                        <label class="col-form-label">Agente del accidente</label>
                        <input type="text" name="txtAgenteAccidente" id="txtAgenteAccidente" value="" class="caja form-control" placeholder="Agente del accidente" maxlength="100">
                    </div>
                    <div class="col-12 col-sm-4">
                        <label for="cmbImpactoAccidente" class="col-form-label">Impacto del accidente</label>
                        <select class="lista form-control" id="cmbImpactoAccidente">
                            <option value="" selected="selected">--Seleccione--</option>
                            <option value="0">Leve</option>
                            <option value="1">Grave</option>
                            <option value="2">Mortal</option>
                        </select>
                    </div>
                    <div class="col-12 col-sm-4">
                        <label class="col-form-label">Fecha limite de investigación</label>
                        <input type="date" name="datFechaLimiteInvestigacion" id="datFechaLimiteInvestigacion" value="" class="caja form-control" placeholder="Fecha limite de investigación">
                    </div>
                </div>
                <div class="row">
                    <div class="col-12 col-sm-4">
                        <label class="col-form-label">Fecha de investigación en curso</label>
                        <input type="date" name="datFechaInvestigacionCurso" id="datFechaInvestigacionCurso" value="" class="caja form-control" placeholder="Fecha de investigación en curso">
                    </div>
                    <div class="col-12 col-sm-4">
                        <label for="cmbEstadoImplementacionAcciones" class="col-form-label">Estado de implementacion de acciones</label>
                        <select class="lista form-control" id="cmbEstadoImplementacionAcciones">
                            <option value="" selected="selected">--Seleccione--</option>
                            <option value="0">Cerrado</option>
                            <option value="1">Abierto</option>
                        </select>
                    </div>
                    <div class="col-12 col-sm-4">
                        <label for="cmbPruebasAccidenteArl" class="col-form-label">¿Se Anexaron las pruebas del accidente a la ARL?</label>
                        <select class="lista form-control" id="cmbPruebasAccidenteArl">
                            <option value="" selected="selected">--Seleccione--</option>
                            <option value="0">No</option>
                            <option value="1">Si</option>
                        </select>
                    </div>
                </div>
                <div class="row justify-content-sm-center">
                    <div class="col-12 col-sm-4">
                        <label for="cmbCalificacionArlAccidente" class="col-form-label">¿La ARL calificó el accidente?</label>
                        <select class="lista form-control" id="cmbCalificacionArlAccidente">
                            <option value="" selected="selected">--Seleccione--</option>
                            <option value="0">No</option>
                            <option value="1">Si</option>
                            <option value="2">En espera de la calificación</option>
                        </select>
                    </div>
                    <div class="col-12 col-sm-4">
                        <label for="cmbEstado" class="col-form-label">Estado</label>
                        <select class="lista form-control" id="cmbEstado">
                            <option value="" selected="selected">--Seleccione--</option>
                            <option value="1">Activo</option>
                            <option value="0">Inactivo</option>
                        </select>
                    </div>
                </div>
            </div>
            <div class="row justify-content-sm-center">
                <div>
                    <input type="hidden" class="boton form-control btn-outline-sena" name="btnBuscar" id="btnBuscar" value="BUSCAR" placeholder="Código del empleado" onclick="Enviar('CONSULTAR',null);">
                </div>
                <div class="col-12 col-sm-2">
                    <input type="button" class="boton form-control btn-outline-sena" name="btnRegistrar" value="REGISTRAR" id="btnRegistrar" placeholder="Descripción" onclick=" Enviar('ADICIONAR',null);">
                </div>
                <div class="col-12 col-sm-2">
                    <input type="button" class="boton form-control btn-outline-sena" name="btnModificar" value="MODIFICAR" id="btnModificar" placeholder="Modificar" onclick=" Enviar('MODIFICAR',null);">
                </div>
                <div class="col-12 col-sm-2">
                    <input type="button" class="boton form-control btn-outline-sena" name="btnLimpiar" value="LIMPIAR" id="btnLimpiar" placeholder="Limpiar" onclick=" Limpiar();">
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <div class="table-responsive">
                        <table id="tableDatos" class="table table-striped table-bordered table-hover" style="border-color: #d04e03;">
                            <thead>
                                <tr>
                                    <td align="center">Persona</td>
                                    <td align="center">Tipo de vinculacion</td>
                                    <td align="center">Centro de formacion</td>
                                    <td align="center">Tipo de accidente</td>
                                    <td align="center">Fecha de accidente</td>
                                    <td align="center">Dia de la semana del accidente</td>
                                    <td align="center">Fecha de reporte a la ARL</td>
                                    <td align="center">Fecha de reporte a la EPS</td>
                                    <td align="center">Fecha de reporte a la Oficina</td>
                                    <td align="center">Dias de incapacidad</td>
                                    <td align="center">Dias cargados</td>
                                    <td align="center">Diagnóstico</td>
                                    <td align="center">Descripción AT</td>
                                    <td align="center">Lugar del accidente</td>
                                    <td align="center">Sitio exacto del accidente</td>
                                    <td align="center">Riesgo locativo</td>
                                    <td align="center">Tipo de lesion</td>
                                    <td align="center">Parte afectada</td>
                                    <td align="center">Mecanismo del accidente</td>
                                    <td align="center">Agente del accidente</td>
                                    <td align="center">impacto del accidente</td>
                                    <td align="center">Fecha limite de investigación</td>
                                    <td align="center">Fecha de investigación en curso</td>
                                    <td align="center">Estado de implementacion de acciones</td>
                                    <td align="center">¿Se Anexaron las pruebas del accidente a la ARL?</td>
                                    <td align="center">¿La ARL calificó el accidente?</td>
                                    <td align="center">Estado</td>
                                    <td align="center">Modificar</td>
                                    <td align="center">Eliminar</td>
                                </tr>
                            </thead>
                            <tbody id="resultado">

                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>