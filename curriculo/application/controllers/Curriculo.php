<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Curriculo extends CI_Controller{

	public function __construct(){
		parent::__construct();
	}

	public function index(){

		//carrega o model
		$this->load->model('Curriculo_model', '', TRUE);

		//executa o método get_dados_pessoas
		$dados['dados_pessoas'] = $this->Curriculo_model->get_dados_pessoas();
		$dados['objetivo'] = $this->Curriculo_model->objetivo();
		$dados['formacaoacademica'] = $this->Curriculo_model->get_formacaoacademica();
		$dados['experiencia'] = $this->Curriculo_model->get_experiencia();

		//carrega a view
		$this->load->view('curriculo', $dados);



	}

}