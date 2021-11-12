<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Chat extends CI_Controller {
	
	public function chat()
	{
		// panggil helper nohp
		$this->load->helper('nohp');
		// panggil library text
		$this->load->helper('text');	
		// panggil library text
		$this->load->library('user_agent');	

		$data['page_title']       = 'Chat';

		$this->load->view('chat', $data);
		

	}
}
