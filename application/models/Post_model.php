<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Post_model extends CI_Model
{
    public function get_table_post()
    {
        $this->db->join('users', 'user_id');
        $this->db->order_by('post_id', 'desc');
        return $this->db->get('posts')->result();
    }

    public function count_data($search = null)
    {
        
        if ($search != null) {
            $this->db->like('title', $search);
        }
        $this->db->from('posts');
        return $this->db->get()->num_rows();
    }

    public function get_all_post($limit, $start, $search = null)
    {
        if ($search != null) {
            $this->db->like('title', $search);
        }

        $this->db->select('p.*');
        $this->db->order_by('post_id', 'desc');
        $this->db->join('users u', 'u.user_id=p.user_id', 'left');
        $query = $this->db->get('posts p', $limit, $start)->result();
        return $query;
    }

    
}
