<div class="row">
    <!-- ./col -->
    <div class="col-lg-3 col-6">
        <!-- small box -->
        <div class="small-box bg-info">
            <div class="inner">
                <h3><?= count($posts); ?></h3>

                <p>Posts</p>
            </div>
            <div class="icon">
                <i class="fa fa-clone"></i>
            </div>
            <a href="<?= base_url('newpost/data'); ?>" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
        </div>
    </div>
    <!-- ./col -->
    <div class="col-lg-3 col-6">
        <!-- small box -->
        <div class="small-box bg-info">
            <div class="inner">
                <h3><?= count($posts); ?></h3>

                <p>New Posts</p>
            </div>
            <div class="icon">
                <i class="fa fa-clone"></i>
            </div>
            <a href="<?= base_url('post/data'); ?>" class="small-box-footer">More info <i class="fas fa-arrow-circle-left"></i></a>
        </div>
    </div>
   
</div>