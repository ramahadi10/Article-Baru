<?= $this->session->flashdata('msg'); ?>
<div class="card card-outline card-primary">
    <div class="card-header">
        <h5 class="card-title">List <?= $title; ?></h5>
        <div class="card-tools">
            <button type="button" class="btn btn-tool" data-card-widget="collapse">
                <i class="fas fa-minus"></i>
            </button>
            <a href="<?= base_url('post/create'); ?>" class="btn btn-primary btn-xs"><i class="fa fa-plus"></i> New Post</a>
        </div>
    </div>
    <div class="card-body p-0 table-responsive">
        <table class="table table-striped datatable">
            <thead>
                <th>#</th>
                <th>Date</th>
                <th>Title</th>
                <th>Author</th>
                <th>Status</th>
                <th>Category</th>
                <th>Modified</th>
                <th></th>
            </thead>
            <tbody>
                <?php
                $n = 1;
                foreach ($post as $row) : ?>
                    <tr>
                        <td width="50"><?= $n++; ?>.</td>
                        <td width="100"><?= $row->create_date; ?></td>
                        <td><?= $row->title; ?></td>
                        <td width="150"><?= $row->content; ?></td>
                        <td width="150"><?= $row->status; ?></td>
                        <td width="150"><?= $row->category; ?></td>
                        <td width="100"><?= $row->update_date; ?></td>
                        <td width="100" class="text-right">
                            <div class="btn-group">
                                <a href="<?= base_url('post/view/') . $row->title;?>" class="btn btn-default btn-sm" target="_blank"><i class="fa fa-eye"></i></a>
                                <a href="<?= base_url('post/edit/') . $row->post_id; ?>" class="btn btn-default btn-sm"><i class="fa fa-edit"></i></a>
                                <a href="<?= base_url('post/delete/') . $row->post_id; ?>" onclick="return confirm('Confirm Delete ?');" class="btn btn-default btn-sm"><i class="fa fa-trash"></i></a>
                            </div>
                        </td>
                    </tr>
                <?php endforeach; ?>
            </tbody>
        </table>
    </div>
</div>