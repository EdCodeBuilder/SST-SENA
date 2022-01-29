<?php
// $ubicacionFormulario =  substr($_SERVER["SCRIPT_NAME"], 17);
include '../../entorno/conexion.php';
require '../../modelo/accidentalidad/estadisticas.M.php';
$respuesta = array();
$accion = $_POST['accion'];
if (isset ($accion)){
    switch($accion){
        case 'ADICIONAR':
            try{
                $estadisticas = new Estadisticas();
                $estadisticas->setVinculacion($_POST['vinculacion']);
                $estadisticas->setCentroFormacion($_POST['centroFormacion']);
                $estadisticas->setIdPersona($_POST['idPersona']);
                $estadisticas->setTipoAccidente($_POST['tipoAccidente']);
                $estadisticas->setFechaAccidente($_POST['fechaAccidente']);
                $estadisticas->setDiaSemanaAccidente($_POST['diaSemanaAccidente']);
                $estadisticas->setFechaReporteArl($_POST['fechaReporteArl']);
                $estadisticas->setFechaReporteEps($_POST['fechaReporteEps']);
                $estadisticas->setFechaReporteOficina($_POST['fechaReporteOficina']);
                $estadisticas->setDiasIncapacidad($_POST['diasIncapacidad']);
                $estadisticas->setDiasCargados($_POST['diasCargados']);
                $estadisticas->setDiagnostico($_POST['diagnostico']);
                $estadisticas->setDescripcionAt($_POST['descripcionAt']);
                $estadisticas->setLugarAccidente($_POST['lugarAccidente']);
                $estadisticas->setSitioExactoAccidente($_POST['sitioExactoAccidente']);
                $estadisticas->setRiesgoLocativo($_POST['riesgoLocativo']);
                $estadisticas->setTipoLesion($_POST['tipoLesion']);
                $estadisticas->setParteAfectada($_POST['parteAfectada']);
                $estadisticas->setMecanismoAccidente($_POST['mecanismoAccidente']);
                $estadisticas->setAgenteAccidente($_POST['agenteAccidente']);
                $estadisticas->setImpactoAccidente($_POST['impactoAccidente']);
                $estadisticas->setFechaLimiteInvestigacion($_POST['fechaLimiteInvestigacion']);
                $estadisticas->setFechaInvestigacionCurso($_POST['fechaInvestigacionCurso']);
                $estadisticas->setEstadoImplementacionAcciones($_POST['estadoImplementacionCurso']);
                $estadisticas->setPruebasAccidenteArl($_POST['pruebasAccidenteArl']);
                $estadisticas->setCalificacionAccidenteArl($_POST['calidicacionAccidenteArl']);
                $estadisticas->setEstado($_POST['estado']);
                $estadisticas->setIdUsuarioCreacion(1); // Obtener id de la persona con la variable session
                $estadisticas->setIdUsuarioModificacion(1); // Obtener id de la persona con la variable session
                $resultado = $estadisticas->Agregar();
                $respuesta['respuesta'] = "La información se adicionó correctamente.";
            }catch(Exception $e){
                $respuesta['respuesta']="Error, no fué posible adicionar la información, consulte con el administrador. Mensaje: ".$e->getMessage();
            }
            $respuesta['accion']='ADICIONAR'; 
            echo json_encode($respuesta);
        break;
        case 'MODIFICAR':
            try{
                $estadisticas = new Estadisticas();
                $estadisticas->setVinculacion($_POST['vinculacion']);
                $estadisticas->setCentroFormacion($_POST['centroFormacion']);
                $estadisticas->setIdPersona($_POST['idPersona']);
                $estadisticas->setTipoAccidente($_POST['tipoAccidente']);
                $estadisticas->setFechaAccidente($_POST['fechaAccidente']);
                $estadisticas->setDiaSemanaAccidente($_POST['diaSemanaAccidente']);
                $estadisticas->setFechaReporteArl($_POST['fechaReporteArl']);
                $estadisticas->setFechaReporteEps($_POST['fechaReporteEps']);
                $estadisticas->setFechaReporteOficina($_POST['fechaReporteOficina']);
                $estadisticas->setDiasIncapacidad($_POST['diasIncapacidad']);
                $estadisticas->setDiasCargados($_POST['diasCargados']);
                $estadisticas->setDiagnostico($_POST['diagnostico']);
                $estadisticas->setDescripcionAt($_POST['descripcionAt']);
                $estadisticas->setLugarAccidente($_POST['lugarAccidente']);
                $estadisticas->setSitioExactoAccidente($_POST['sitioExactoAccidente']);
                $estadisticas->setRiesgoLocativo($_POST['riesgoLocativo']);
                $estadisticas->setTipoLesion($_POST['tipoLesion']);
                $estadisticas->setParteAfectada($_POST['parteAfectada']);
                $estadisticas->setMecanismoAccidente($_POST['mecanismoAccidente']);
                $estadisticas->setAgenteAccidente($_POST['agenteAccidente']);
                $estadisticas->setImpactoAccidente($_POST['impactoAccidente']);
                $estadisticas->setFechaLimiteInvestigacion($_POST['fechaLimiteInvestigacion']);
                $estadisticas->setFechaInvestigacionCurso($_POST['fechaInvestigacionCurso']);
                $estadisticas->setEstadoImplementacionAcciones($_POST['estadoImplementacionCurso']);
                $estadisticas->setPruebasAccidenteArl($_POST['pruebasAccidenteArl']);
                $estadisticas->setCalificacionAccidenteArl($_POST['calidicacionAccidenteArl']);
                $estadisticas->setEstado($_POST['estado']);
                $estadisticas->setIdUsuarioModificacion(1);
                $resultado = $estadisticas->Modificar();
                $respuesta['respuesta'] = "La información se actualizó correctamente.";
            }catch(Exception $e){
                $respuesta['respuesta']="Error, no fué posible modificar la información, consulte con el administrador. Mensaje: ".$e->getMessage();
            }
            $respuesta['accion']='MODIFICAR';
            echo json_encode($respuesta);
        break;
        case 'ELIMINAR':
            try{
                $estadisticas = new Estadisticas();
                $estadisticas->setIdEstadisticas($_POST['id']);
                $resultado = $estadisticas->Eliminar();
                $respuesta['respuesta'] = "La información se eliminó correctamente.";
            }catch(Exception $e){
                $respuesta['respuesta']="Error, no fué posible eliminar la información, consulte con el administrador.";
            }
            $respuesta['accion']='ELIMINAR';
            echo json_encode($respuesta);
        break;
        case 'CONSULTAR':
            try{
                $estadisticas = new Estadisticas();
                $estadisticas->setIdEstadisticas($_POST['id']);
                $estadisticas->setCentroFormacion($_POST['centroFormacion']);
                $estadisticas->setIdPersona($_POST['idPersona']);
                $estadisticas->setFechaAccidente($_POST['fechaAccidente']);
                $estadisticas->setDiaSemanaAccidente($_POST['diaAccidente']);
                $estadisticas->setDiasIncapacidad($_POST['diasIncapacidad']);
                $estadisticas->setFechaReporteEps($_POST['fechaReporteEps']);
                $estadisticas->setFechaReporteArl($_POST['fechaReporteArl']);
                $estadisticas->setFechaReporteOficina($_POST['fechaReporteOficina']);
                $estadisticas->setDiasCargados($_POST['diasCargados']);
                $estadisticas->setDiagnostico($_POST['diagnostico']);
                $estadisticas->setDescripcionAt($_POST['descripcionAt']);
                $estadisticas->setLugarAccidente($_POST['lugarAccidente']);
                $estadisticas->setSitioExactoAccidente($_POST['SitioAccidente']);
                $estadisticas->setRiesgoLocativo($_POST['riesgoLocativo']);
                $estadisticas->setTipoLesion($_POST['tipoLesion']);
                $estadisticas->setParteAfectada($_POST['parteAfectada']);
                $estadisticas->setMecanismoAccidente($_POST['mecanismoAccidente']);
                $estadisticas->setImpactoAccidente($_POST['impactoAccidente']);
                $estadisticas->setFechaLimiteInvestigacion($_POST['fechaLimiteInvestigacion']);
                $estadisticas->setFechaInvestigacionCurso($_POST['fechaInvestigacionCurso']);
                $estadisticas->setEstadoImplementacionAcciones($_POST['estadoImplementacionAcciones']);
                $estadisticas->setPruebasAccidenteArl($_POST['pruebasAccidenteArl']);
                $estadisticas->setCalificacionAccidenteArl($_POST['calificacionAccidenteArl']);
                $estadisticas->setEstado($_POST['estado']);                           
                $resultado = $estadisticas->consultar();
                $numeroRegistros = $estadisticas->conn->ObtenerNumeroRegistros();
                if($numeroRegistros === 1){
                    if ($rowBuscar = $estadisticas->conn->ObtenerObjeto()){
                        $respuesta['id']=$rowBuscar->id_estadisticas;
                        $respuesta['centroFormacion']=$rowBuscar->centro_formacion;
                        $respuesta['idPersona']=$rowBuscar->id_persona;
                        $respuesta['persona']=$rowBuscar->nombre;
                        $respuesta['fechaAccidente']=$rowBuscar->fecha_accidente;
                        $respuesta['diaAccidente']=$rowBuscar->dia_semana_accidente;
                        $respuesta['diasIncapacidad']=$rowBuscar->dias_incapacidad;
                        $respuesta['fechaReporteEps']=$rowBuscar->fecha_reporte_eps;
                        $respuesta['fechaReporteOficina']=$rowBuscar->fecha_reporte_oficina;
                        $respuesta['fechaReporteArl']=$rowBuscar->fecha_reporte_arl;
                        $respuesta['diasCargados']=$rowBuscar->dias_cargados;
                        $respuesta['diagnostico']=$rowBuscar->diagnostico;
                        $respuesta['descripcionAt']=$rowBuscar->descripcion_at;
                        $respuesta['lugarAccidente']=$rowBuscar->lugar_accidente;
                        $respuesta['sitioAccidente']=$rowBuscar->sitio_exacto_accidente;
                        $respuesta['riesgoLocativo']=$rowBuscar->riesgo_locativo;
                        $respuesta['tipoLesion']=$rowBuscar->tipo_lesion;
                        $respuesta['parteAfectada']=$rowBuscar->parte_afectada;
                        $respuesta['mecanismoAccidente']=$rowBuscar->mecanismo_accidente;
                        $respuesta['agenteAccidente']=$rowBuscar->agente_accidente;
                        $respuesta['impactoAccidente']=$rowBuscar->impacto_accidente;
                        $respuesta['fechaLimiteInvestigacion']=$rowBuscar->fecha_limite_investigacion;
                        $respuesta['fechaInvestigacionCurso']=$rowBuscar->fecha_investigacion_curso;
                        $respuesta['estadoImplementacionAcciones']=$rowBuscar->estado_implementacion_acciones;
                        $respuesta['pruebasAccidenteArl']=$rowBuscar->pruebas_accidente_arl;
                        $respuesta['calificacionArlAccidente']=$rowBuscar->calificacion_accidente_arl;
                        $respuesta['estado']=$rowBuscar->estado;
                        $respuesta['eliminar'] = "<input type='button' name='eliminar' class='eliminar' value='Eliminar' onclick='Enviar(\"ELIMINAR\",".$rowBuscar->id_estadisticas.")'>";
                    }
                }else{
                    if(isset($resultado)){
                        $retorno="<table>";
                        foreach($estadisticas->conn->ObtenerRegistros() AS $rowConsulta){
                            $retorno .= "<tr>
                                            <td><label>" . $rowConsulta[0] . "</label></td>
                                            <td><label>" . $rowConsulta[1] . "</label></td>
                                            <td><label>" . $rowConsulta[2] . "</label></td>
                                            <td><label>" . $rowConsulta[3] . "</label></td>
                                            <td><label>" . $rowConsulta[4] . "</label></td>
                                            <td><label>" . $rowConsulta[5] . "</label></td>
                                            <td><label>" . $rowConsulta[6] . "</label></td>
                                            <td><label>" . $rowConsulta[7] . "</label></td>
                                            <td><label>" . $rowConsulta[8] . "</label></td>
                                            <td><label>" . $rowConsulta[9] . "</label></td>
                                            <td><label>" . $rowConsulta[10] . "</label></td>
                                            <td><label>" . $rowConsulta[11] . "</label></td>
                                            <td><label>" . $rowConsulta[12] . "</label></td>
                                            <td><label>" . $rowConsulta[13] . "</label></td>
                                            <td><label>" . $rowConsulta[14] . "</label></td>
                                            <td><label>" . $rowConsulta[15] . "</label></td>
                                            <td><label>" . $rowConsulta[16] . "</label></td>
                                            <td><label>" . $rowConsulta[17] . "</label></td>
                                            <td><label>" . $rowConsulta[18] . "</label></td>
                                            <td><label>" . $rowConsulta[19] . "</label></td>
                                            <td><label>" . $rowConsulta[20] . "</label></td>
                                            <td><label>" . $rowConsulta[21] . "</label></td>
                                            <td><label>" . $rowConsulta[22] . "</label></td>
                                            <td><label>" . $rowConsulta[23] . "</label></td>
                                            <td><label>" . $rowConsulta[24] . "</label></td>
                                            <td><label>" . $rowConsulta[25] . "</label></td>
                                            <td><label>" . ($rowConsulta[26] == 1 ? 'Activo' : 'Inactivo') . "</label></td>
                                            <td align='center' style='cursor: pointer'><span class='icon-edit1' onclick='Enviar(\"CONSULTAR\"," . $rowConsulta[27] . ")'></td>
                                            <td align='center' style='cursor: pointer'><span class='icon-trash' onclick='Enviar(\"ELIMINAR\"," . $rowConsulta[27] . ")'></td>
                                        </tr>";
                        }
                        $retorno .= "</table>";
                        $respuesta['tablaRegistro']=$retorno;
                    }else{                                         
                        $respuesta['tablaRegistro']='No existen datos!!!';
                    }
                }                                                     
            }catch(Exception $e){
                $respuesta['respuesta']="Error, no fué posible consultar la información, consulte con el administrador.";
            }
            $respuesta['numeroRegistros']=$numeroRegistros;
            $respuesta['accion']='CONSULTAR'; 
            echo json_encode($respuesta);           
        break;
    }
}