<?php
namespace contacto\controller;

use controller\AbstractController as IdxController;
class ContactoController
	extends IdxController
{ 



	public $request;
	public $params;
	
		public function processContactAjaxAction($request ,array $params){
	 
			sleep(1);
	 		
			if((!(empty($params['email']))) && (!(empty($params['nombre']))) && (!(empty($params['msj'])))){

				$result = "DATOS RECIBIDOS CORRECTAMENTE";
			
			}else{

				$result = "Faltan datos";
			}

			
		 echo json_encode($result);
			
		}


	public function indexAction($request, $params) {
		include __DIR__."/../../view/contacto.php";
	}
	


}