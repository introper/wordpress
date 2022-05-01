<?php
/*Template name: Registrace */
get_header();

if (!is_user_logged_in()) :

if ($_SERVER['REQUEST_METHOD'] == 'POST') :

    $errorMessage = "";
    $created = false;

    $email = getFilter(INPUT_POST, "email");
    $firstName = getFilter(INPUT_POST, "krestnijmeno");
    $lastName = getFilter(INPUT_POST, "prijmeni");
    $heslo = getFilter(INPUT_POST, "heslo");
    $heslo2 = getFilter(INPUT_POST, "heslo2");

    $newUserArg = array(
        "user_pass" => $heslo,
        "user_login" => remove_accents(strtolower(str_replace(" ", "", $firstName . " " . $lastName))),
        "user_nicename" => remove_accents(strtolower(str_replace(" ", "", $firstName . " " . $lastName))),
        "user_email" => $email,
        "first_name" => $firstName,
        "last_name" => $lastName,
        "role" => "subscriber"
    );

    $newUser = wp_insert_user($newUserArg);
    //var_dump($newUser);

    $mailExists = email_exists($email);
    if ($mailExists) :
        if (!is_wp_error($newUser)) :
            $errorMessage = "Uživatel byl vytvořen";
            $created = true;
            $userData = get_user_by("email", $email);
            $passwordCheck = wp_check_password($heslo, $userData->user_pass, $email);
            if ($passwordCheck) :
                $userMeta = get_user_meta($mailExists);
                $errorMessage = "";
                $creds = array(
                    "user_login" => $email,
                    "user_password" => $heslo,
                    "remember" => true
                );

                $login = wp_signon($creds, false);
                if (is_wp_error($login)) :
                    $errorMessage = $login->get_error_message();
                endif;
                if ($login) :
                    $errorMessage = "Uživatel byl úspěšně vytvořen";
                endif;
            endif;
        else :
            $errorMessage = "Uživatel nebyl vytvořen.";
            $created = false;
        endif;
    else :
        $emailError = true;
        $errorMessage = "E-mail již existuje.";
    endif;


//} else {
//print_r($error);
//}
endif;

?>

<main>
    <div class="register">
        <form method="POST" id="POST" name="POST">

            <h1>Registrovat</h1>

            <!-- <?php if ($_SERVER['REQUEST_METHOD'] == 'POST') : ?>
                <div class="errorblock <?php if ($created) : ?> green <?php else : ?> red <?php endif; ?>">
                    <?php echo $errorMessage; ?>
                </div>
            <?php endif; ?> -->

            <div class="register-div">
                <input type="text" name="krestnijmeno" id="krestnijmeno" placeholder="Křestní jméno">
            </div>
            <div class="register-div">

                <input type="text" name="prijmeni" id="prijmeni" placeholder="Příjmení">
            </div>

            <div class="register-div">
                <input type="email" name="email" id="email" placeholder="E-mail">
            </div>

            <div class="register-div">
                <input type="password" name="heslo" id="heslo" placeholder="Heslo">
            </div>

            <div class="register-div">
                <input type="password" name="heslo2" id="heslo2" placeholder="Ověření hesla">
            </div>
            <div class="register-div">

                <button type="submit" class="formbtn">Registrovat</button>
            </div>


        </form>
    </div>


</main>

<?php else : ?>

<?php wp_redirect(home_url()); ?>
<?php endif; ?>