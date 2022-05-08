<?php
get_header();



$author_id = $post->post_author;
$authord = get_the_author_meta('user_email', $author_id);



?>


<div class="container">
<a class="back-btn" href="<?php echo home_url(); ?>">Zpět</a>
    <div class="detail-div">
        <a href="<?php echo get_the_permalink($post->ID); ?>">
            <img class="detail-img" src="<?php echo get_the_post_thumbnail_url($post->ID); ?>" alt="<?php echo get_the_title($post->ID); ?>">
        </a> <br>
        <div class="text-block2">

            <div class="text-detail">
                <h2><?php echo get_the_title($post->ID); ?></h2>
            </div>
            <div class="text-detail">
                <h3><?php echo get_field("popisek", $post->ID); ?></h3>
            </div>
            <div class="text-detail">

                <h3>Cena: <?php echo get_field("cena", $post->ID); ?> Kč</h3>
            </div>
            <div class="text-detail">
                <h2>Kontakt na majitele</h2>
                <h3><?php echo ($authord) ?></h3>
            </div>
        </div>
    </div>
</div>