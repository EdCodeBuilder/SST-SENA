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
                $estadisticas->setIdCargo($_POST['idCargo']);
                $estadisticas->setCorreoInstitucional($_POST['correoInstitucional']);
                $estadisticas->setFechaIngreso($_POST['fechaIngreso']);
                $estadisticas->setArl($_POST['arl']);
                $estadisticas->setSalud($_POST['salud']);
                $estadisticas->setPension($_POST['pension']);
                $estadisticas->setIdPersona($_POST['idPersona']);
                $estadisticas->setSueldoBasico($_POST['sueldoBasico']);
                $estadisticas->setEstado($_POST['estado']);
                $estadisticas->setIdUsuarioCreacion(1); // Obtener id de la persona con la variable session
                $estadisticas->setIdUsuarioModificacion(1); // Obtener id de la persona con la variable session
                $resultado = $estadisticas->Agregar();
                $respuesta['respuesta']="La información se adicionó correctamente.";
            }catch(Exception $e){
                $respuesta['respuesta']="Error, no fué posible adicionar la información, consulte con el administrador. Mensaje: ".$e->getMessage();
            }
            $respuesta['accion']='ADICIONAR'; 
            echo json_encode($respuesta);
        break;
    }
}
