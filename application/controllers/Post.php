<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Post extends CI_Controller
{
    private $path = "";

    public function __construct()
    {
        parent::__construct();
        $this->path = FCPATH . "assets/dist/img/posts/";
        $this->load->library('pagination');
    }

    public function view($slug = "")
    {
        if (!$slug) {
            redirect('post/list');
        }

        $data['title']  = "Post Detail";
        $data['post']   = $this->post->get_post_by_slug($slug);
        $data['selected_category'] = $data['post']->category;
        $data['recent_posts'] = $this->post->recent_post($slug);

        public_template('post/view', $data);
    }

    public function index()
    {
        $search = $this->input->get('search', true);
        $category = $this->input->get('posts', true);

        $config['base_url'] = base_url('post/index');
        $config['total_rows'] = $this->post->count_data($search, $category);
        $config['per_page'] = 6;
        $config['reuse_query_string'] = TRUE;

        $this->pagination->initialize($config);

        $start = $this->uri->segment(3);
        $data['posts'] = $this->post->get_all_post($config['per_page'], $start, $search, $category);
        $data['category'] = $this->main->get('posts');
        $data['search'] = $search;
        $data['selected_category'] = $category;
        $data['title'] = "Home";

        public_template('post/list', $data);
    }

    public function data()
    {
        check_role(['admin']);

        $data['title'] = "Posts";
        $data['post'] = $this->post->get_table_post();
        admin_template('post/data', $data);
    }

    private function validation()
    {
        $this->form_validation->set_rules('title', 'Title', 'required|trim|min_length[20]');
        $this->form_validation->set_rules('content', 'Post Body', 'required|trim|min_length[200]');
        $this->form_validation->set_rules('category', 'Category', 'required|min_length[3]');
        $this->form_validation->set_rules('status', 'Status', 'required|in_list[Publish, Draft, Thrash]');
        
    }

    public function create()
    {
        check_role(['admin']);

        $data['title'] = "Create New Post";
        
        $this->validation();

        if ($this->form_validation->run() == false) {
            admin_template('post/create', $data);
        } else {
            $this->save();
        }
    }

    private function _configUpload()
    {
        $config['upload_path'] = $this->path;
        $config['allowed_types'] = 'gif|jpg|jpeg|png|jpeg|bmp';
        $config['encrypt_name'] = TRUE;
        $this->load->library('upload');
        $this->upload->initialize($config);
    }

    private function _compressImg($name)
    {
        $config['image_library']    = 'gd2';
        $config['source_image']     = $this->path . $name;
        $config['create_thumb']     = FALSE;
        $config['maintain_ratio']   = TRUE;
        $config['quality']          = '70%';
        $config['new_image']        = $this->path . $name;

        $this->load->library('image_lib', $config);
        $this->image_lib->resize();
    }

    private function save()
    {
        check_role(['admin']);

        $input = $this->input->post(null, true);
        $input['content'] = $this->input->post('content', false);
        $input['title'] = $this->input->post('title', false);
        $input['category'] = $this->input->post('category', false);
        $input['status'] = $this->input->post('status', false);

        $input['user_id'] = userdata()->user_id;
        
        // Image Upload
        if (!empty($_FILES['post_thumbnail']['name'])) {
            $this->_configUpload();

            if ($this->upload->do_upload('post_thumbnail')) {
                $img = $this->upload->data();

                //Compress Image
                $this->_compressImg($img['file_name']);

                $input['post_thumbnail'] = $img['file_name'];
            } else {
                setMsg('danger', "Failed to upload image : " . $this->upload->display_errors());
                redirect('post/create');
            }
        }

        $this->main->insert('posts', $input);
        redirect('post/data');
    }

    public function edit($post_id)
    {
        check_role(['admin']);

        $where = ['post_id' => encode_php_tags($post_id)];

        $data['title'] = 'Edit Post';
        $data['post'] = $this->main->get_where('posts', $where);
        if (!$data['post']) redirect('post/data');

        $this->validation();

        if ($this->form_validation->run() == false) {
            admin_template('post/edit', $data);
        } else {
            $this->update($where);
        }
    }

    private function update($where)
    {
        check_role(['admin']);

        $input = $this->input->post(null, true);
        $input['content'] = $this->input->post('content', false);

        setMsg('success', 'Post updated.');
        $this->main->update('posts', $input, $where);
        redirect('post/data');
    }

    

    public function delete($post_id)
    {
        check_role(['admin']);

        $id = encode_php_tags($post_id);
        $where = ['post_id' => $id];

        $query = $this->main->get_where('posts', $where);
        if (!$query) redirect('posts');
        
        setMsg('success', "Post deleted successfully.");
        $this->main->delete('posts', $where);
        redirect('post/data');
    }
}
