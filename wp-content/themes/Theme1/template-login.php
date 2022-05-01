<?php

if (!is_user_logged_in()) :


    /*Template name: Login */
    get_header();

?>

    <main>

        <div class="login">
            <?php

            if ($_SERVER['REQUEST_METHOD'] == 'POST') :

                $email = getFilter(INPUT_POST, "login-email");
                $pass = getFilter(INPUT_POST, "login-password");

                $emailErrorMessage = "";
                $emailError = false;

                $passwordErrorMessage = "";
                $passwordError = false;

                $mailExists = email_exists($email);
                if ($mailExists) :
                    $userData = get_user_by("email", $email);
                    $allowed_roles = array('subscribers');
                    if (!array_intersect($allowed_roles, $userData->roles)) :
                        $passwordCheck = wp_check_password($pass, $userData->user_pass, $mailExists);
                        if ($passwordCheck) :
                            $userMeta = get_user_meta($mailExists);
                            $errorMessage = "";
                            $creds = array(
                                "user_login" => $userMeta["nickname"][0],
                                "user_password" => $pass,
                                "remember" => true
                            );

                            $login = wp_signon($creds, false);

                            if (is_wp_error($login)) :
                                $emailErrorMessage = $login->get_error_message();
                            endif;
                            if ($login) :
                                $dashboard = get_field("hlavni_panel", "options");
                                wp_redirect(get_the_permalink($dashboard));
                            endif;
                        else :
                            $passwordError = true;
                            $passwordErrorMessage = "Heslo není správné.";
                        endif;
                    else :
                        $emailError = true;
                        $emailErrorMessage = "Zvolte jiného uživatele.";
                    endif;
                else :
                    $emailError = true;
                    $emailErrorMessage = "E-mail neexistuje.";
                endif;
            endif;

            ?>
            <form action="#" method="POST">
                <?php if ($_SERVER['REQUEST_METHOD'] == 'POST') : ?>
                    <?php if ($emailError) : ?>
                        <span class="error-message"><?php echo $emailErrorMessage; ?></span>
                    <?php endif; ?>
                <?php endif; ?>
                <h1 class="h1-login">Přihlásit</h1>
                <div class="login-div">
                    <input type="email" name="login-email" id="email" placeholder="E-mail">
                </div>
                <div class="login-div">

                    <input type="password" name="login-password" id="login-password" placeholder="Heslo">
                </div>
                <div class="login-div">

                    <button class="formbtn">Přihlásit</button>

                </div>
            </form>

        </div>
    </main>

<?php else : ?>

    <?php wp_redirect(home_url()); ?>
<?php endif; ?>