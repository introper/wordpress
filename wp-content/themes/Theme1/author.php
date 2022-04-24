<?php

get_header();

$id =  get_queried_object_id();
$userID = $id;
$userObject = get_queried_object();

?>


<main role="">

    <section class="main-section">
        <div class="container">
            <h2>Seznam knih uživatele <strong><?php echo $userObject->first_name . " " . $userObject->last_name; ?></strong></h2>
            <?php if (is_user_logged_in()) : ?>
                <?php $current = wp_get_current_user(); ?>
                <?php if ($current->ID == $userID) : ?>
                    <div class="flex-main">
                        <div class="menu">
                            <ul>
                                <li><a href="">Vytvořit</a></li>
                            </ul>
                        </div>
                        <?php
                        $arg = array(
                            "author" => $userID,
                            "post_type" => "kniha",
                            "post_posts_page" => -1,
                            "post_status" => "publish",
                        );
                        $query = new WP_Query($arg);
                        if ($query->have_posts()) :
                        ?>
                            <div class="flex-block">

                                <?php while ($query->have_posts()) : $query->the_post(); ?>
                                    <div class="book-block editable" data-target="<?php echo $post->post_name; ?>">
                                        <a href="<?php echo get_the_permalink($post->ID); ?>" class="image-block">
                                            <img src="<?php echo get_the_post_thumbnail_url($post->ID); ?>" alt="<?php echo get_the_title($post->ID); ?>">
                                        </a>
                                        <div class="text-block">
                                            <h3><?php echo get_the_title($post->ID); ?></h3>
                                            <p><?php echo get_the_excerpt($post->ID); ?></p>
                                            <a href="<?php echo get_the_permalink($post->ID); ?>" class="btn">Zobrazit</a>
                                        </div>
                                    </div>
                                <?php endwhile; ?>
                                <?php wp_reset_query(); ?>
                            </div>
                        <?php endif; ?>
                    </div>
                <?php else : ?>

                <?php endif; ?>
            <?php else : ?>
                <?php

                $arg = array(
                    "author" => $userID,
                    "post_type" => "kniha",
                    "post_posts_page" => -1,
                    "post_status" => "publish",
                );
                $query = new WP_Query($arg);
                if ($query->have_posts()) :
                ?>
                    <div class="flex-block">

                        <?php while ($query->have_posts()) : $query->the_post(); ?>
                            <div class="book-block">
                                <a href="<?php echo get_the_permalink($post->ID); ?>" class="image-block">
                                    <img src="<?php echo get_the_post_thumbnail_url($post->ID); ?>" alt="<?php echo get_the_title($post->ID); ?>">
                                </a>
                                <div class="text-block">
                                    <h3><?php echo get_the_title($post->ID); ?></h3>
                                    <p><?php echo get_the_excerpt($post->ID); ?></p>
                                    <a href="<?php echo get_the_permalink($post->ID); ?>" class="btn">Zobrazit</a>
                                </div>
                            </div>
                        <?php endwhile; ?>
                        <?php wp_reset_query(); ?>
                    </div>
                <?php endif; ?>
            <?php endif; ?>
        </div>
    </section>

</main>


<?php if (is_user_logged_in()) : ?>
    <?php $current = wp_get_current_user(); ?>
    <?php if ($current->ID == $userID) : ?>

        <?php
        $arg = array(
            "author" => $userID,
            "post_type" => "kniha",
            "post_posts_page" => -1,
            "post_status" => "publish",
        );
        $query = new WP_Query($arg);
        if ($query->have_posts()) : ?>
            <?php while ($query->have_posts()) : $query->the_post(); ?>

                <?php if ($_SERVER['REQUEST_METHOD'] == 'POST') : ?>
                    <?php
                    var_dump("Michal je kokot");
                    $idPost = $post->ID;
                    $desc = getFilter(INPUT_POST, "text");
                    $price = getFilter(INPUT_POST, "cena");
                    if ($desc) :
                        update_post_meta($idPost, "popisek", $desc);
                    endif;

                    if ($price) :
                        update_post_meta($idPost, "cena", $price);
                    endif;

                    ?>
                <?php endif; ?>
                <div class="popup" id="<?php echo $post->post_name; ?>">
                    <div class="exit"></div>
                    <div class="modal-container">
                        <h3>Upravit knihu <strong><?php echo get_the_title($post->ID); ?></strong></h3>
                        <form action="" method="POST">
                            <div>
                                <textarea name="text" id="">
                                    <?php echo get_field("popisek", $post->ID); ?>
                                </textarea>
                            </div>
                            <div>
                                <input type="number" name="cena" value="<?php echo get_field("cena", $post->ID); ?>" id="">
                            </div>
                            <div>
                                <button type="submit">Odeslat</button>
                            </div>
                        </form>
                    </div>
                </div>
            <?php endwhile; ?>
            <?php wp_reset_query(); ?>
            <div class="filter-back"></div>
        <?php endif; ?>
    <?php endif; ?>
<?php endif; ?>