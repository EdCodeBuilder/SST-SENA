function Enviar(accion, id) {
    if (id === null) {
        id = $('#hidIdEstadisticas').val();
    }
    var parametros = {
        "id": id,
        "centroFormacion": $('#cmbCentroFormacion').val(),
        "idPersona": $('#hidIdPersona').val(),
        "persona": $('#txtPersona').val(),
        "fechaAccidente": $('#datFechaAccidente').val(),
        "diaAccidente": $('#cmbDiaAccidente').val(),
        "diasIncapacidad": $('#numDiasIncapacidad').val(),
        "fechaReporteEps": $('#datFechaReporteEps').val(),
        "fechaReporteOficina": $('#datFechaReporteOficina').val(),
        "fechaReporteArl": $('#datFechaReporteArl').val(),
        "diasCargados": $('#numDiasCargados').val(),
        "diagnostico": $('#txtDiagnostico').val(),
        "descripcionAt": $('#txtDescripcionAt').val(),
        "lugarAccidente": $('#cmbLugarAccidente').val(),
        "sitioAccidente": $('#cmbSitioAccidente').val(),
        "riesgoLocativo": $('#cmbRiesgoLocativo').val(),
        "tipoLesion": $('#txtTipoLesion').val(),
        "parteAfectada": $('#txtParteAfectada').val(),
        "mecanismoAccidente": $('#txtMecanismoAccidente').val(),
        "agenteAccidente": $('#txtAgenteAccidente').val(),
        "impactoAccidente": $('#cmbImpactoAccidente').val(),
        "fechaLimiteInvestigacion": $('#datFechaLimiteInvestigacion').val(),
        "fechaInvestigacionCurso":$('#datFechaInvestigacionCurso').val(),
        "estadoImplementacionAcciones": $('#cmbEstadoImplementacionAcciones').val(),
        "pruebasAccidenteArl": $('#cmbPruebasAccidenteArl').val(),
        "calificacionArlAccidente": $('#cmbCalificacionArlAccidente').val(),
        "estado": $('#cmbEstado').val(),
        "accion": accion
    };
    $.ajax({
        data: parametros, //datos que se van a enviar al ajax
        url: '../../controlador/accidentalidad/estadisticas.C.php', //archivo php que recibe los datos
        type: 'post', //método para enviar los datos
        dataType: 'json',//Recibe el array desde php

        success: function (respuesta) { //procesa y devuelve la respuesta
            // console.log(respuesta);

            //Reiniciar datatable
            $("#tableDatos").dataTable().fnDestroy();

            //Respueta adicionar
            if (respuesta['accion'] == 'ADICIONAR') {
                alert(respuesta['respuesta']);
                Limpiar();
                $("#btnBuscar").trigger("click");
            }

            //Respuesta muchos registros
            if (respuesta['accion'] == 'CONSULTAR' && respuesta['numeroRegistros'] > 1) {
                $("#resultado").html(respuesta['tablaRegistro']);

                //Código para DataTable

                //Para inicializar datatable de la manera más simple

                $(document).ready(function () {
                    $('#tableDatos').DataTable({
                        //para cambiar el lenguaje a español
                        "language": {
                            "lengthMenu": "Mostrar _MENU_ registros",
                            "zeroRecords": "No se encontraron resultados",
                            "info": "Mostrando registros del _START_ al _END_ de un total de _TOTAL_ registros",
                            "infoEmpty": "Mostrando registros del 0 al 0 de un total de 0 registros",
                            "infoFiltered": "(filtrado de un total de _MAX_ registros)",
                            "sSearch": "Buscar:",
                            "oPaginate": {
                                "sFirst": "Primero",
                                "sLast": "Último",
                                "sNext": "Siguiente",
                                "sPrevious": "Anterior"
                            },
                            "sProcessing": "Procesando...",
                        },
                        "paging": false
                    });
                });
                //$('#divEliminar').html(respuesta['eliminar']).hide();
            }

            //Respuesta un registro                
            if (respuesta['accion'] == 'CONSULTAR' && respuesta['numeroRegistros'] == 1) {
                $('#hidIdEstadisticas').val(respuesta['id']);
                $('#cmbCentroFormacion').val(respuesta['centroFormacion']);
                $('#hidIdPersona').val(respuesta['idPersona']);
                $('#txtPersona').val(respuesta['persona']);
                $('#datFechaAccidente').val(respuesta['fechaAccidente']);
                $('#cmbDiaAccidente').val(respuesta['diaAccidente']);
                $('#numDiasIncapacidad').val(respuesta['diasIncapacidad']);
                $('#datFechaReporteEps').val(respuesta['fechaReporteEps']);
                $('#datFechaReporteOficina').val(respuesta['fechaReporteOficina']);
                $('#datFechaReporteArl').val(respuesta['fechaReporteArl']);
                $('#numDiasCargados').val(respuesta['diasCargados']);
                $('#txtDiagnostico').val(respuesta['diagnostico']);
                $('#txtDescripcionAt').val(respuesta['descripcionAt']);
                $('#cmbLugarAccidente').val(respuesta['lugarAccidente']);
                $('#cmbSitioAccidente').val(respuesta['sitioAccidente']);
                $('#cmbRiesgoLocativo').val(respuesta['riesgoLocativo']);
                $('#txtTipoLesion').val(respuesta['tipoLesion']);
                $('#txtParteAfectada').val(respuesta['parteAfectada']);
                $('#txtMecanismoAccidente').val(respuesta['mecanismoAccidente']);
                $('#txtAgenteAccidente').val(respuesta['agenteAccidente']);
                $('#cmbImpactoAccidente').val(respuesta['impactoAccidente']);
                $('#datFechaLimiteInvestigacion').val(respuesta['fechaLimiteInvestigacion']);
                $('#datFechaInvestigacionCurso').val(respuesta['fechaInvestigacionCurson']);
                $('#cmbEstadoImplementacionAcciones').val(respuesta['estadoImplementacionAcciones']);
                $('#cmbPruebasAccidenteArl').val(respuesta['pruebasAccidenteArl']);
                $('#cmbCalificacionArlAccidente').val(respuesta['calificacionArlAccidente']);
                $('#cmbEstado').val(respuesta['estado']);
                $('#txtPersona').focus();
            }
            //Respuesta modificar
            if (respuesta['accion'] == 'MODIFICAR') {
                alert(respuesta['respuesta']);
                Limpiar();
                $("#btnBuscar").trigger("click");
            }

            //Respuesta eliminar
            if (respuesta['accion'] == 'ELIMINAR') {
                alert(respuesta['respuesta']);
                Limpiar();
                $("#btnBuscar").trigger("click");
            }
        }
    });
}
function Limpiar() {
    $('#hidIdEstadisticas').val('');
    $('#cmbCentroFormacion').val('');
    $('#hidIdPersona').val('');
    $('#txtPersona').val('');
    $('#datFechaAccidente').val('');
    $('#cmbDiaAccidente').val('');
    $('#numDiasIncapacidad').val('');
    $('#datFechaReporteEps').val('');
    $('#datFechaReporteOficina').val('');
    $('#datFechaReporteArl').val('');
    $('#numDiasCargados').val('');
    $('#txtDiagnostico').val('');
    $('#txtDescripcionAt').val('');
    $('#cmbLugarAccidente').val('');
    $('#cmbSitioAccidente').val('');
    $('#cmbRiesgoLocativo').val('');
    $('#txtTipoLesion').val('');
    $('#txtParteAfectada').val('');
    $('#txtMecanismoAccidente').val('');
    $('#txtAgenteAccidente').val('');
    $('#cmbImpactoAccidente').val('');
    $('#datFechaLimiteInvestigacion').val('');
    $('#datFechaInvestigacionCurso').val('');
    $('#cmbEstadoImplementacionAcciones').val('');
    $('#cmbPruebasAccidenteArl').val('');
    $('#cmbCalificacionArlAccidente').val('');
    $('#cmbEstado').val('');
    $('#txtPersona').focus();
}