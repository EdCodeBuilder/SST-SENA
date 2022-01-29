<?php

/**
 * Estadisticas
 */
class Estadisticas
{
    private $idEstadisticas;
    private $vinculacion;
    private $centroFormacion;
    private $idPersona;
    private $tipoAccidente;
    private $fechaAccidente;
    private $diaSemanaAccidente;
    private $fechaReporteArl;
    private $fechaReporteEps;
    private $fechaReporteOficina;
    private $diasIncapacidad;
    private $diasCargados;
    private $diagnostico;
    private $descripcionAt;
    private $lugarAccidente;
    private $sitioExactoAccidente;
    private $riesgoLocativo;
    private $tipoLesion;
    private $parteAfectada;
    private $mecanismoAccidente;
    private $agenteAccidente;
    private $impactoAccidente;
    private $fechaLimiteInvestigacion;
    private $fechaInvestigacionCurso;
    private $estadoImplementacionAcciones;
    private $pruebasAccidenteArl;
    private $calificacionAccidenteArl;
    private $estado;
    private $fechaCrecion;
    private $fechaModificacion;
    private $idUsuarioCreacion;
    private $idUsuarioModificacion;

    /**
     * Get the value of idEstadisticas
     */
    public function getIdEstadisticas()
    {
        return $this->idEstadisticas;
    }

    /**
     * Set the value of idEstadisticas
     *
     * @return  self
     */
    public function setIdEstadisticas($idEstadisticas)
    {
        $this->idEstadisticas = $idEstadisticas;

        return $this;
    }

    /**
     * Get the value of vinculacion
     */
    public function getVinculacion()
    {
        return $this->vinculacion;
    }

    /**
     * Set the value of vinculacion
     *
     * @return  self
     */
    public function setVinculacion($vinculacion)
    {
        $this->vinculacion = $vinculacion;

        return $this;
    }

    /**
     * Get the value of centroFormacion
     */
    public function getCentroFormacion()
    {
        return $this->centroFormacion;
    }

    /**
     * Set the value of centroFormacion
     *
     * @return  self
     */
    public function setCentroFormacion($centroFormacion)
    {
        $this->centroFormacion = $centroFormacion;

        return $this;
    }

    /**
     * Get the value of idPersona
     */
    public function getIdPersona()
    {
        return $this->idPersona;
    }

    /**
     * Set the value of idPersona
     *
     * @return  self
     */
    public function setIdPersona($idPersona)
    {
        $this->idPersona = $idPersona;

        return $this;
    }

    /**
     * Get the value of tipoAccidente
     */
    public function getTipoAccidente()
    {
        return $this->tipoAccidente;
    }

    /**
     * Set the value of tipoAccidente
     *
     * @return  self
     */
    public function setTipoAccidente($tipoAccidente)
    {
        $this->tipoAccidente = $tipoAccidente;

        return $this;
    }

    /**
     * Get the value of fechaAccidente
     */
    public function getFechaAccidente()
    {
        return $this->fechaAccidente;
    }

    /**
     * Set the value of fechaAccidente
     *
     * @return  self
     */
    public function setFechaAccidente($fechaAccidente)
    {
        $this->fechaAccidente = $fechaAccidente;

        return $this;
    }

    /**
     * Get the value of diaSemanaAccidente
     */
    public function getDiaSemanaAccidente()
    {
        return $this->diaSemanaAccidente;
    }

    /**
     * Set the value of diaSemanaAccidente
     *
     * @return  self
     */
    public function setDiaSemanaAccidente($diaSemanaAccidente)
    {
        $this->diaSemanaAccidente = $diaSemanaAccidente;

        return $this;
    }

    /**
     * Get the value of fechaReporteArl
     */
    public function getFechaReporteArl()
    {
        return $this->fechaReporteArl;
    }

    /**
     * Set the value of fechaReporteArl
     *
     * @return  self
     */
    public function setFechaReporteArl($fechaReporteArl)
    {
        $this->fechaReporteArl = $fechaReporteArl;

        return $this;
    }

    /**
     * Get the value of fechaReporteEps
     */
    public function getFechaReporteEps()
    {
        return $this->fechaReporteEps;
    }

    /**
     * Set the value of fechaReporteEps
     *
     * @return  self
     */
    public function setFechaReporteEps($fechaReporteEps)
    {
        $this->fechaReporteEps = $fechaReporteEps;

        return $this;
    }

    /**
     * Get the value of fechaReporteOficina
     */
    public function getFechaReporteOficina()
    {
        return $this->fechaReporteOficina;
    }

    /**
     * Set the value of fechaReporteOficina
     *
     * @return  self
     */
    public function setFechaReporteOficina($fechaReporteOficina)
    {
        $this->fechaReporteOficina = $fechaReporteOficina;

        return $this;
    }

    /**
     * Get the value of diasIncapacidad
     */
    public function getDiasIncapacidad()
    {
        return $this->diasIncapacidad;
    }

    /**
     * Set the value of diasIncapacidad
     *
     * @return  self
     */
    public function setDiasIncapacidad($diasIncapacidad)
    {
        $this->diasIncapacidad = $diasIncapacidad;

        return $this;
    }

    /**
     * Get the value of diasCargados
     */
    public function getDiasCargados()
    {
        return $this->diasCargados;
    }

    /**
     * Set the value of diasCargados
     *
     * @return  self
     */
    public function setDiasCargados($diasCargados)
    {
        $this->diasCargados = $diasCargados;

        return $this;
    }

    /**
     * Get the value of diagnostico
     */
    public function getDiagnostico()
    {
        return $this->diagnostico;
    }

    /**
     * Set the value of diagnostico
     *
     * @return  self
     */
    public function setDiagnostico($diagnostico)
    {
        $this->diagnostico = $diagnostico;

        return $this;
    }

    /**
     * Get the value of descripcionAt
     */
    public function getDescripcionAt()
    {
        return $this->descripcionAt;
    }

    /**
     * Set the value of descripcionAt
     *
     * @return  self
     */
    public function setDescripcionAt($descripcionAt)
    {
        $this->descripcionAt = $descripcionAt;

        return $this;
    }

    /**
     * Get the value of lugarAccidente
     */
    public function getLugarAccidente()
    {
        return $this->lugarAccidente;
    }

    /**
     * Set the value of lugarAccidente
     *
     * @return  self
     */
    public function setLugarAccidente($lugarAccidente)
    {
        $this->lugarAccidente = $lugarAccidente;

        return $this;
    }

    /**
     * Get the value of sitioExactoAccidente
     */
    public function getSitioExactoAccidente()
    {
        return $this->sitioExactoAccidente;
    }

    /**
     * Set the value of sitioExactoAccidente
     *
     * @return  self
     */
    public function setSitioExactoAccidente($sitioExactoAccidente)
    {
        $this->sitioExactoAccidente = $sitioExactoAccidente;

        return $this;
    }

    /**
     * Get the value of riesgoLocativo
     */
    public function getRiesgoLocativo()
    {
        return $this->riesgoLocativo;
    }

    /**
     * Set the value of riesgoLocativo
     *
     * @return  self
     */
    public function setRiesgoLocativo($riesgoLocativo)
    {
        $this->riesgoLocativo = $riesgoLocativo;

        return $this;
    }

    /**
     * Get the value of tipoLesion
     */
    public function getTipoLesion()
    {
        return $this->tipoLesion;
    }

    /**
     * Set the value of tipoLesion
     *
     * @return  self
     */
    public function setTipoLesion($tipoLesion)
    {
        $this->tipoLesion = $tipoLesion;

        return $this;
    }

    /**
     * Get the value of parteAfectada
     */
    public function getParteAfectada()
    {
        return $this->parteAfectada;
    }

    /**
     * Set the value of parteAfectada
     *
     * @return  self
     */
    public function setParteAfectada($parteAfectada)
    {
        $this->parteAfectada = $parteAfectada;

        return $this;
    }

    /**
     * Get the value of mecanismoAccidente
     */
    public function getMecanismoAccidente()
    {
        return $this->mecanismoAccidente;
    }

    /**
     * Set the value of mecanismoAccidente
     *
     * @return  self
     */
    public function setMecanismoAccidente($mecanismoAccidente)
    {
        $this->mecanismoAccidente = $mecanismoAccidente;

        return $this;
    }

    /**
     * Get the value of agenteAccidente
     */
    public function getAgenteAccidente()
    {
        return $this->agenteAccidente;
    }

    /**
     * Set the value of agenteAccidente
     *
     * @return  self
     */
    public function setAgenteAccidente($agenteAccidente)
    {
        $this->agenteAccidente = $agenteAccidente;

        return $this;
    }

    /**
     * Get the value of impactoAccidente
     */
    public function getImpactoAccidente()
    {
        return $this->impactoAccidente;
    }

    /**
     * Set the value of impactoAccidente
     *
     * @return  self
     */
    public function setImpactoAccidente($impactoAccidente)
    {
        $this->impactoAccidente = $impactoAccidente;

        return $this;
    }

    /**
     * Get the value of fechaLimiteInvestigacion
     */
    public function getFechaLimiteInvestigacion()
    {
        return $this->fechaLimiteInvestigacion;
    }

    /**
     * Set the value of fechaLimiteInvestigacion
     *
     * @return  self
     */
    public function setFechaLimiteInvestigacion($fechaLimiteInvestigacion)
    {
        $this->fechaLimiteInvestigacion = $fechaLimiteInvestigacion;

        return $this;
    }

    /**
     * Get the value of fechaInvestigacionCurso
     */
    public function getFechaInvestigacionCurso()
    {
        return $this->fechaInvestigacionCurso;
    }

    /**
     * Set the value of fechaInvestigacionCurso
     *
     * @return  self
     */
    public function setFechaInvestigacionCurso($fechaInvestigacionCurso)
    {
        $this->fechaInvestigacionCurso = $fechaInvestigacionCurso;

        return $this;
    }

    /**
     * Get the value of estadoImplementacionAcciones
     */
    public function getEstadoImplementacionAcciones()
    {
        return $this->estadoImplementacionAcciones;
    }

    /**
     * Set the value of estadoImplementacionAcciones
     *
     * @return  self
     */
    public function setEstadoImplementacionAcciones($estadoImplementacionAcciones)
    {
        $this->estadoImplementacionAcciones = $estadoImplementacionAcciones;

        return $this;
    }

    /**
     * Get the value of pruebasAccidenteArl
     */
    public function getPruebasAccidenteArl()
    {
        return $this->pruebasAccidenteArl;
    }

    /**
     * Set the value of pruebasAccidenteArl
     *
     * @return  self
     */
    public function setPruebasAccidenteArl($pruebasAccidenteArl)
    {
        $this->pruebasAccidenteArl = $pruebasAccidenteArl;

        return $this;
    }

    /**
     * Get the value of calificacionAccidenteArl
     */
    public function getCalificacionAccidenteArl()
    {
        return $this->calificacionAccidenteArl;
    }

    /**
     * Set the value of calificacionAccidenteArl
     *
     * @return  self
     */
    public function setCalificacionAccidenteArl($calificacionAccidenteArl)
    {
        $this->calificacionAccidenteArl = $calificacionAccidenteArl;

        return $this;
    }

    /**
     * Get the value of estado
     */
    public function getEstado()
    {
        return $this->estado;
    }

    /**
     * Set the value of estado
     *
     * @return  self
     */
    public function setEstado($estado)
    {
        $this->estado = $estado;

        return $this;
    }

    /**
     * Get the value of fechaCrecion
     */
    public function getFechaCrecion()
    {
        return $this->fechaCrecion;
    }

    /**
     * Set the value of fechaCrecion
     *
     * @return  self
     */
    public function setFechaCrecion($fechaCrecion)
    {
        $this->fechaCrecion = $fechaCrecion;

        return $this;
    }

    /**
     * Get the value of fechaModificacion
     */
    public function getFechaModificacion()
    {
        return $this->fechaModificacion;
    }

    /**
     * Set the value of fechaModificacion
     *
     * @return  self
     */
    public function setFechaModificacion($fechaModificacion)
    {
        $this->fechaModificacion = $fechaModificacion;

        return $this;
    }

    /**
     * Get the value of idUsuarioCreacion
     */
    public function getIdUsuarioCreacion()
    {
        return $this->idUsuarioCreacion;
    }

    /**
     * Set the value of idUsuarioCreacion
     *
     * @return  self
     */
    public function setIdUsuarioCreacion($idUsuarioCreacion)
    {
        $this->idUsuarioCreacion = $idUsuarioCreacion;

        return $this;
    }

    /**
     * Get the value of idUsuarioModificacion
     */
    public function getIdUsuarioModificacion()
    {
        return $this->idUsuarioModificacion;
    }

    /**
     * Set the value of idUsuarioModificacion
     *
     * @return  self
     */
    public function setIdUsuarioModificacion($idUsuarioModificacion)
    {
        $this->idUsuarioModificacion = $idUsuarioModificacion;

        return $this;
    }

    public function __construct()
    {
        $this->conn = new Conexion();
    }

    /**
     * Agregar Estadisticas a la base de datos
     * @access public
     * @return true
     */
    public function Agregar()
    {
        $sentenciaSql = "CALL Agregar_estadisticas('$this->vinculacion'
                        ,'$this->centroFormacion'
                        ,$this->idPersona
                        ,'$this->tipoAccidente'
                        ,'$this->fechaAccidente'
                        ,'$this->diaSemanaAccidente'
                        ,'$this->fechaReporteArl'
                        ,'$this->fechaReporteEps'
                        ,'$this->fechaReporteOficina'
                        ,$this->diasIncapacidad
                        ,$this->diasCargados
                        ,'$this->diagnostico'
                        ,'$this->descripcionAt'
                        ,'$this->lugarAccidente'
                        ,'$this->sitioExactoAccidente'
                        ,'$this->riesgoLocativo'
                        ,'$this->tipoLesion'
                        ,'$this->parteAfectada'
                        ,'$this->mecanismoAccidente'
                        ,'$this->agenteAccidente'
                        ,'$this->impactoAccidente'
                        ,'$this->fechaLimiteInvestigacion'
                        ,'$this->fechaInvestigacionCurso'
                        ,'$this->estadoImplementacionAcciones'
                        ,'$this->pruebasAccidenteArl'
                        ,'$this->calificacionAccidenteArl'
                        ,'$this->estado'
                        ,$this->idUsuarioCreacion
                        ,$this->idUsuarioModificacion)";
        $this->conn->preparar($sentenciaSql);
        $this->conn->ejecutar();
        return true;
    }

    /**
     * Modificar Estadisticas en la base de datos
     * @access public
     * @return true
     */
    public function Modificar()
    {
        $sentenciaSql = "CALL Modificar_estadisticas('$this->vinculacion'
                        ,'$this->centroFormacion'
                        ,$this->idPersona
                        ,'$this->tipoAccidente'
                        ,'$this->fechaAccidente'
                        ,'$this->diaSemanaAccidente'
                        ,'$this->fechaReporteArl'
                        ,'$this->fechaReporteEps'
                        ,'$this->fechaReporteOficina'
                        ,$this->diasIncapacidad
                        ,$this->diasCargados
                        ,'$this->diagnostico'
                        ,'$this->descripcionAt'
                        ,'$this->lugarAccidente'
                        ,'$this->sitioExactoAccidente'
                        ,'$this->riesgoLocativo'
                        ,'$this->tipoLesion'
                        ,'$this->parteAfectada'
                        ,'$this->mecanismoAccidente'
                        ,'$this->agenteAccidente'
                        ,'$this->impactoAccidente'
                        ,'$this->fechaLimiteInvestigacion'
                        ,'$this->fechaInvestigacionCurso'
                        ,'$this->estadoImplementacionAcciones'
                        ,'$this->pruebasAccidenteArl'
                        ,'$this->calificacionAccidenteArl'
                        ,'$this->estado'
                        ,$this->idUsuarioModificacion
                        ,$this->idEstadisticas)";
        $this->conn->preparar($sentenciaSql);
        $this->conn->ejecutar();
        return true;
    }

    /**
     * Eliminar Estadisticas de la base de datos
     * @access public
     * @return true
     */
    public function Eliminar()
    {
        $sentenciaSql = "DELETE FROM estadisticas 
                            WHERE id_estadisticas = $this->idEstadisticas";
        $this->conn->preparar($sentenciaSql);
        $this->conn->ejecutar();
        return true;
    }

    /**
     * Consultar Estadisticas en la base de datos
     * @access public
     * @return true
     */
    public function Consultar()
    {
        $condicion = $this->obtenerCondicion();
        $sentenciaSql = "SELECT CONCAT(p.nombre,' ',p.apellido) AS nombre
                                ,e.id_persona
                                ,e.vinculacion
                                ,e.centro_formacion
                                ,e.tipo_accidente
                                ,e.fecha_accidente
                                ,e.dia_semana_accidente
                                ,e.fecha_reporte_arl
                                ,e.fecha_reporte_eps
                                ,e.fecha_reporte_oficina
                                ,e.dias_incapacidad
                                ,e.dias_cargados
                                ,e.diagnostico
                                ,e.descripcion_at
                                ,e.lugar_accidente
                                ,e.sitio_exacto_accidente
                                ,e.riesgo_locativo
                                ,e.tipo_lesion
                                ,e.parte_afectada
                                ,e.mecanismo_accidente
                                ,e.agente_accidente
                                ,e.impacto_accidente
                                ,e.fecha_limite_investigacion
                                ,e.fecha_investigacion_curso
                                ,e.estado_implementacion_acciones
                                ,e.pruebas_accidente_arl
                                ,e.calificacion_accidente_arl
                                ,e.estado
                                ,e.id_estadisticas
                            FROM estadisticas AS e
                            INNER JOIN persona AS p ON e.id_persona = p.id_persona
                            $condicion";
        $this->conn->preparar($sentenciaSql);
        $this->conn->ejecutar();
        return true;
    }

    /**
     * Obtener condición WHERE para añadirla a la $sentenciaSql
     * @access private
     * @return mixed $condicion
     */
    private function obtenerCondicion()
    {
        $whereAnd = " WHERE ";
        $condicion = " ";

        if ($this->idEstadisticas != '') {
            $condicion = $whereAnd . $condicion . " id_estadisticas  = $this->idEstadisticas";
            $whereAnd = ' AND ';
        }
        return $condicion;
    }

    /**
     * Destruye los atributos de Estadisticas y la conexión a la base de datos
     * @access public
     * @return void
     */
    public function __destruct()
    {

        unset($this->idEstadisticas);
        unset($this->vinculacion);
        unset($this->centroFormacion);
        unset($this->idPersona);
        unset($this->tipoAccidente);
        unset($this->fechaAccidente);
        unset($this->diaSemanaAccidente);
        unset($this->fechaReporteArl);
        unset($this->fechaReporteEps);
        unset($this->fechaReporteOficina);
        unset($this->diasIncapacidad);
        unset($this->diasCargados);
        unset($this->diagnostico);
        unset($this->descripcionAt);
        unset($this->lugarAccidente);
        unset($this->sitioExactoAccidente);
        unset($this->riesgoLocativo);
        unset($this->tipoLesion);
        unset($this->parteAfectada);
        unset($this->mecanismoAccidente);
        unset($this->agenteAccidente);
        unset($this->impactoAccidente);
        unset($this->fechaLimiteInvestigacion);
        unset($this->fechaInvestigacionCurso);
        unset($this->estadoImplementacionAcciones);
        unset($this->pruebasAccidenteArl);
        unset($this->calificacionAccidenteArl);
        unset($this->estado);
        unset($this->fechaCrecion);
        unset($this->fechaModificacion);
        unset($this->idUsuarioCreacion);
        unset($this->idUsuarioModificacion);
        unset($this->conn);
    }
}
