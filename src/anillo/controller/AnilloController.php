<?php
namespace anillo\controller;
use controller\AbstractController as IdxController;
class AnilloController
	extends IdxController
{ 
	public $request;
	public $params;

	public function indexAction($request , $params) {
		include __DIR__."/../../view/anillos.php";

	}

}