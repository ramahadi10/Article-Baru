<?= form_open_multipart(); ?>
<div class="text-right mb-3">
    <a href="<?= base_url('post/data'); ?>" class="btn btn-default">
        <i class="fa fa-arrow-left"></i> Back
    </a>
    <button type="submit" class="btn btn-primary">
        <i class="fa fa-save"></i> Save
    </button>
</div>
<div class="row">
    <div class="col-md-8 order-last order-md-first">
        <div class="card card-outline card-primary shadow-sm">
            <div class="card-header">
                <h3 class="card-title">Post Body</h3>

                <div class="card-tools">
                    <button type="button" class="btn btn-tool" data-card-widget="collapse">
                        <i class="fas fa-minus"></i>
                    </button>
                </div>
                <!-- /.card-tools -->
            </div>
            <div class="card-body">
                <div class="form-group">
                    <label for="title">Post Title</label>
                    <input id="title" name="title" class="form-control" type="text" placeholder="Title..." value="<?= set_value('title'); ?>">
                    <?= form_error('title'); ?>
                </div>
                <label for="summernote">Post Content</label>
                <textarea id="summernote" class="form-control" rows="6" name="content" placeholder="Content..."><?= set_value('content'); ?></textarea>
                <?= form_error('content'); ?>
            </div>
        </div>
    </div>
    <div class="col-md-4">
        <div class="card card-outline card-primary shadow-sm">
            <div class="card-header">
                <h3 class="card-title">Post Info</h3>

                <div class="card-tools">
                    <button type="button" class="btn btn-tool" data-card-widget="collapse">
                        <i class="fas fa-minus"></i>
                    </button>
                </div>
                <!-- /.card-tools -->
            </div>
            <div class="card-body">
                <div class="form-group">
                    <label for="category">Post Category</label>
                    <input id="category" name="category" class="form-control" type="text" placeholder="Category..." value="<?= set_value('category'); ?>">
                    <?= form_error('category'); ?>
                </div>
                
                <div class="form-group">
                    <label for="status">Post Status</label>
                    <input id="status" name="status" class="form-control" type="text" placeholder="Status..." value="<?= set_value('status'); ?>">
                    <?= form_error('status'); ?>
                </div>
            </div>
        </div>
    </div>
</div>
<?= form_close(); ?>