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
     * Agregar Cargo a la base de datos
     * @access public
     * @return true
     */
    public function Agregar()
    {
        $sentenciaSql = "CALL Agregar_estadistica('$this->vin'
                        ,'$this->estado'
                        ,$this->idUsuarioCreacion
                        ,$this->idUsuarioModificacion)";
        $this->conn->preparar($sentenciaSql);
        $this->conn->ejecutar();
        return true;
    }

    /**
     * Modificar Cargo en la base de datos
     * @access public
     * @return true
     */
    public function Modificar()
    {
        $sentenciaSql = "CALL Modificar_cargo('$this->descripcion',
                        '$this->estado',
                        '$this->idUsuarioModificacion',
                        $this->idCargo)";
        $this->conn->preparar($sentenciaSql);
        $this->conn->ejecutar();
        return true;
    }

    /**
     * Eliminar Cargo de la base de datos
     * @access public
     * @return true
     */
    public function Eliminar()
    {
        $sentenciaSql = "DELETE FROM cargo 
                            WHERE id_cargo = $this->idCargo";
        $this->conn->preparar($sentenciaSql);
        $this->conn->ejecutar();
        return true;
    }

    /**
     * Consultar Cargo en la base de datos
     * @access public
     * @return true
     */
    public function Consultar()
    {
        $condicion = $this->obtenerCondicion();
        $sentenciaSql = "SELECT * FROM cargo $condicion";
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

        if ($this->idCargo != '') {
            $condicion = $whereAnd . $condicion . " id_cargo  = $this->idCargo";
            $whereAnd = ' AND ';
        }
        if ($this->descripcion != '') {
            $condicion = $condicion . $whereAnd . " descripcion LIKE '%$this->descripcion%' ";
            $whereAnd = ' AND ';
        }
        if ($this->estado != '') {
            if ($whereAnd == ' AND ') {
                $condicion = $condicion . $whereAnd . " cargo.estado = '$this->estado'";
                $whereAnd = ' AND ';
            } else {
                $condicion = $whereAnd . $condicion . " cargo.estado = '$this->estado'";
                $whereAnd = ' AND ';
            }
        }
        return $condicion;
    }

    /**
     * Destruye los atributos de Cargo y la conexión a la base de datos
     * @access public
     * @return void
     */
    public function __destruct()
    {

        unset($this->idCargo);
        unset($this->codigoCargo);
        unset($this->descripcion);
        unset($this->estado);
        unset($this->fechaCreacion);
        unset($this->fechaModificacion);
        unset($this->idUsuarioCreacion);
        unset($this->idUsuarioModificacion);
        unset($this->conn);
    }
}
