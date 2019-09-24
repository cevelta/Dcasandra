<?php
namespace error\controller;
use controller\AbstractController as IdxController;
class ErrorController
	extends IdxController
{ 
	public $request;
	public $params;

	public function indexAction($request , $params) {
		include __DIR__."/../../view/error.php";

	}

}