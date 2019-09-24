<?php
namespace producto\controller;
use controller\AbstractController as IdxController;
class ProductoController
	extends IdxController
{ 
	public $request;
	public $params;

	public function indexAction($request , $params) {
		include __DIR__."/../../view/producto.php";

	}

}