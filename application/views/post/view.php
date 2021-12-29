<div class="row row-cards">
    <div class="col-lg-8">
        <div class="card mb-2">
            <div class="card-body">
                <ol class="breadcrumb breadcrumb-arrows" aria-label="breadcrumbs">
                    <li class="breadcrumb-item">
                        <a href="<?= base_url(); ?>">
                            <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
                                <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                <polyline points="5 12 3 12 12 3 21 12 19 12" />
                                <path d="M5 12v7a2 2 0 0 0 2 2h10a2 2 0 0 0 2 -2v-7" />
                                <path d="M9 21v-6a2 2 0 0 1 2 -2h2a2 2 0 0 1 2 2v6" />
                            </svg>
                            Home
                        </a>
                    </li>
                    <li class="breadcrumb-item active" aria-current="page"><?= $post->title; ?></li>
                </ol>
            </div>
        </div>
        <div class="card mb-3">
            <div class="card-body">
                <h1 class="text-capitalize mb-3"><?= $post->title; ?></h1>
                <div class="post-meta">
                    <div>
                        <a href="#" class="btn btn-sm">
                            <?php if ($post->avatar) : ?>
                                <span class="avatar" style="background-image: url(<?= base_url('assets/dist/img/users/') . $post->avatar ?>)"></span>
                            <?php else : ?>
                                <span class="avatar bg-blue-lt"><?= user_initial($post->fullname); ?></span>
                            <?php endif; ?>
                            <?= $post->fullname; ?>
                        </a>
                        <button type="button" class="btn btn-sm">
                            <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
                                <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                <rect x="4" y="5" width="16" height="16" rx="2" />
                                <line x1="16" y1="3" x2="16" y2="7" />
                                <line x1="8" y1="3" x2="8" y2="7" />
                                <line x1="4" y1="11" x2="20" y2="11" />
                                <rect x="8" y="15" width="2" height="2" />
                            </svg>
                            <?= custom_date('d M Y', $post->create_date); ?>
                        </button>
                    </div>
                </div>
                <hr class="my-3">
                <?php if ($post->title) : ?>
                    
                <?php endif; ?>
                <div class="markdown">
                    <?= $post->content; ?>
                </div>
            </div>
            <div class="card-footer">
                <button class="btn btn-sm">
                    <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
                        <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                        <circle cx="6" cy="12" r="3" />
                        <circle cx="18" cy="6" r="3" />
                        <circle cx="18" cy="18" r="3" />
                        <line x1="8.7" y1="10.7" x2="15.3" y2="7.3" />
                        <line x1="8.7" y1="13.3" x2="15.3" y2="16.7" />
                    </svg>
                    Share
                </button>
                <a href="#" class="btn btn-facebook btn-sm" aria-label="Button">
                    <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
                        <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                        <path d="M7 10v4h3v7h4v-7h3l1 -4h-4v-2a1 1 0 0 1 1 -1h3v-4h-3a5 5 0 0 0 -5 5v2h-3" />
                    </svg>
                    Facebook
                </a>
                <a href="#" class="btn btn-twitter btn-sm" aria-label="Button">
                    <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
                        <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                        <path d="M22 4.01c-1 .49 -1.98 .689 -3 .99c-1.121 -1.265 -2.783 -1.335 -4.38 -.737s-2.643 2.06 -2.62 3.737v1c-3.245 .083 -6.135 -1.395 -8 -4c0 0 -4.182 7.433 4 11c-1.872 1.247 -3.739 2.088 -6 2c3.308 1.803 6.913 2.423 10.034 1.517c3.58 -1.04 6.522 -3.723 7.651 -7.742a13.84 13.84 0 0 0 .497 -3.753c-.002 -.249 1.51 -2.772 1.818 -4.013z" />
                    </svg>
                    Twitter
                </a>
                <a href="#" class="btn btn-pinterest btn-sm" aria-label="Button">
                    <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
                        <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                        <rect x="3" y="5" width="18" height="14" rx="4" />
                        <path d="M10 9l5 3l-5 3z" />
                    </svg>
                    Pinterest
                </a>
            </div>
        </div>
    </div>
    
</div>