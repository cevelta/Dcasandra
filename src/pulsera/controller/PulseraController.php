<?php
namespace pulsera\controller;
use controller\AbstractController as IdxController;
class PulseraController
	extends IdxController
{ 
	public $request;
	public $params;

	public function indexAction($request , $params) {
		include __DIR__."/../../view/pulsera.php";

	}

}