<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Dashboard extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->library('upload');

        check_role(['admin']);
    }

    public function index()
    {
        $data['title'] = "Dashboard";

        $data['posts']      = (array) $this->main->get('posts');
        $data['members']    = (array) $this->main->get_where('users', ['role' => 'member'], true);
        
        admin_template('dashboard', $data);
    }

}
