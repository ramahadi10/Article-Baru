<?php

function public_template($view, $data)
{
    $ci = get_instance();
    $ci->load->view('_includes/public/header.php', $data);
    $ci->load->view($view);
    $ci->load->view('_includes/public/footer.php');
}

function admin_template($view, $data)
{
    $ci = get_instance();
    $ci->load->view('_includes/admin/header.php', $data);
    $ci->load->view($view);
    $ci->load->view('_includes/admin/footer.php');
}

function setMsg($type, $msg)
{
    $ci = get_instance();

    // Icon
    $icon['success'] = '<svg xmlns="http://www.w3.org/2000/svg" class="icon mr-1" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><path d="M5 12l5 5l10 -10"></path></svg>';
    $icon['info'] = '<svg xmlns="http://www.w3.org/2000/svg" class="icon mr-1" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><circle cx="12" cy="12" r="9"></circle><line x1="12" y1="8" x2="12.01" y2="8"></line><polyline points="11 12 12 12 12 16 13 16"></polyline></svg>';
    $icon['waring'] = '<svg xmlns="http://www.w3.org/2000/svg" class="icon mr-1" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><path d="M12 9v2m0 4v.01"></path><path d="M5 19h14a2 2 0 0 0 1.84 -2.75l-7.1 -12.25a2 2 0 0 0 -3.5 0l-7.1 12.25a2 2 0 0 0 1.75 2.75"></path></svg>';
    $icon['danger'] = '<svg xmlns="http://www.w3.org/2000/svg" class="icon mr-1" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><circle cx="12" cy="12" r="9"></circle><line x1="12" y1="8" x2="12" y2="12"></line><line x1="12" y1="16" x2="12.01" y2="16"></line></svg>';

    // Alert
    $text = "";
    $text .= "<div class='alert alert-{$type} alert-dismissible' role='alert'>";
    $text .= $icon[$type] . $msg;
    $text .= '<a href="#" class="btn-close" data-dismiss="alert" aria-label="close"></a>';
    $text .= "</div>";
    return $ci->session->set_flashdata('msg', $text);
}

function userdata()
{
    $ci = get_instance();

    $user_id = $ci->session->userdata("user_session");
    $userdata = $ci->main->get_where("users", ["user_id" => $user_id]);

    return $userdata;
}

function active_menu($page)
{
    $ci = get_instance();
    $uri = $ci->uri->segment(1);

    return $uri == $page ? "active" : "";
}

function check($data1, $data2, $result = "active")
{
    return $data1 == $data2 ? $result : "";
}

function user_initial($name)
{
    return substr($name, 0, 1);
}

function custom_date($format, $date)
{
    return date($format, strtotime($date));
}

function check_session()
{
    if (!userdata()) {
        setMsg("danger", "<strong>Access Denied!</strong> Sign-in to enter dashboard.");
        redirect('signin');
    }
}

function check_role($role = [])
{
    check_session();

    if (!in_array(userdata()->role, $role)) {
        redirect('configuration/account');
    }
}
