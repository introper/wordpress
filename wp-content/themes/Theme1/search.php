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
        
        <div class="block-2">
                            <div class="book-block">
                                <a href="<?php echo get_the_permalink($post->ID); ?>" class="image-block">
                                    <img src="<?php echo get_the_post_thumbnail_url($post->ID); ?>" alt="<?php echo get_the_title($post->ID); ?>">
                                </a> <br>
                                <div class="text-block">
                                    <h3><?php echo get_the_title($post->ID); ?></h3>
                                    <h3><?php echo get_field("cena", $post->ID); ?> Kč</h3>
                                    <p><?php echo get_the_excerpt($post->ID); ?></p>
                                    <!-- <div class="btn-block"> -->
                                        <a href="<?php echo get_the_permalink($post->ID); ?>" class="book-btn">Zobrazit</a>
                                    <!-- </div> -->
                                </div>
                            </div>
                    </div>
    <?php endwhile; ?>
    <?php wp_reset_query(); ?>
<?php endif; ?>