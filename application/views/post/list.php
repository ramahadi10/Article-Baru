<!-- Page title -->
<div class="page-header d-print-none">
    <div class="row align-items-center">
        <div class="col">
            <!-- Page pre-title -->
            <div class="page-pretitle">
                Home
            </div>
            
        </div>
    </div>
</div>

<?php if (!$posts) : ?>
    <div class="row justify-content-center">
        <div class="col-md-6 text-center">
            <div class="alert alert-warning">Post not found. <br> <a href="<?= base_url(); ?>" class="badge bg-danger">Show All</a></div>
        </div>
    </div>
<?php endif; ?>

<div class="row row-cards">
    <?php
    foreach ($posts as $post) :
    ?>

        <div class="col-6 col-lg-4">
            <div class="card card-sm h-100">
                
                <div class="card-body">
                    <span class="badge bg-blue-lt mb-1">
                        <svg style="height: 12px;" xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
                            <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                            <path d="M11 3l9 9a1.5 1.5 0 0 1 0 2l-6 6a1.5 1.5 0 0 1 -2 0l-9 -9v-4a4 4 0 0 1 4 -4h4" />
                            <circle cx="9" cy="9" r="2" />
                        </svg>
                        <?= $post->category; ?>
                    </span>
                    <a href="<?= base_url('post/view/') . $post->title; ?>" class="text-decoration-none text-dark">
                        <h3 class="card-title font-weight-bold mb-0"><?= $post->title; ?></h3>
                    </a>
                </div>
                <div class="card-footer bg-white">
                    <div class="d-flex align-items-center">
                        <?php if ($post->avatar) : ?>
                            <span class="avatar mr-3 rounded-circle" style="background-image: url(<?= base_url('assets/dist/img/users/') . $post->avatar ?>)"></span>
                        <?php else : ?>
                            <span class="avatar mr-3 rounded-circle bg-blue-lt"><?= user_initial($post->fullname); ?></span>
                        <?php endif; ?>
                        <div>
                            <div><?= $post->fullname; ?></div>
                            <div class="text-muted">
                                <?= custom_date('d F Y', $post->create_date); ?>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    <?php endforeach; ?>
</div>

<div class="row mt-4">
    <div class="col-12">
        <?= $this->pagination->create_links(); ?>
    </div>
</div>