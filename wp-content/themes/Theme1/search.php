<?php

get_header();


$search = get_search_query();

$arg = array(
    "post_type" => "kniha",
    "post_posts_page" => -1,
    "post_status" => "publish",
    "s" => $search
);
$query = new WP_Query($arg);
if ($query->have_posts()) : ?>

    <?php while ($query->have_posts()) : $query->the_post(); ?>
        <?php echo get_the_title($post->ID); ?>
    <?php endwhile; ?>
    <?php wp_reset_query(); ?>
<?php endif; ?>