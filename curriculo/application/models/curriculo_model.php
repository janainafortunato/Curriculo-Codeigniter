<?php

class Curriculo_model extends CI_Model{

	/*public $nome;
	public $email;
	public $link;
	public $telefone;
	public $endereco;
	public $texto;
	public $curso;
	public $periodo;
	public $inst;
	public $empresa;
	public $funcao;
	public $periodo2;*/

	public function __construct(){
		parent::__construct();
	}

	//public function inserir(){
	//	return $this->db->inserir('curriculo', $this);
	//}


	public function get_dados_pessoas(){

		$this->db->select("*");
		return $this->db->get('dados_pessoas')->result();
	
	}

	public function objetivo(){
		$this->db->select("*");
		return $this->db->get('objetivo')->result();
	}

	public function get_formacaoacademica(){
		$this->db->select("*");
		return $this->db->get('formacaoacademica')->result();
	}

	public function get_experiencia(){
		$this->db->select("*");
		return $this->db->get('experiencia')->result();
	}

}