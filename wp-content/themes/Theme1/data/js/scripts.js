jQuery(document).ready(function ($) {

    $(document).on("click", ".book-block", function (e) {
        e.preventDefault();
        var href = $(this).attr("data-target");
        var back = $(document).find(".filter-back");
        if (href.length > 0) {
            var element = $(document).find(".popup#" + href);
            if (element.length > 0 && element.hasClass("popup")) {
                element.addClass("active");
                back.addClass("active");
                $("html").addClass("remove");
            }
        }
    });

    $(document).on("click", ".createBook", function (e) {
        e.preventDefault();
        var href = $(this).attr("data-target");
        var back = $(document).find(".filter-back");
        if (href.length > 0) {
            var element = $(document).find(".popup#" + href);
            if (element.length > 0 && element.hasClass("popup")) {
                element.addClass("active");
                back.addClass("active");
                $("html").addClass("remove");
            }
        }
    });

    $(document).on("click", ".filter-back", function (e) {
        e.preventDefault();
        var t = $(this);
        var html = $("html");
        var popup = $(document).find(".popup");
        if (popup.hasClass("active") && t.hasClass("active")) {
            popup.removeClass("active");
            t.removeClass("active");
            html.removeClass("remove");
        }
    });
    $(document).on("click", ".popup .exit", function (e) {
        e.preventDefault();
        var back = $(document).find(".filter-back");
        var html = $("html");
        var popup = $(document).find(".popup");
        if (popup.hasClass("active") && back.hasClass("active")) {
            popup.removeClass("active");
            back.removeClass("active");
            html.removeClass("remove");
        }
    });

});

$(function() {

    $("form[name='POST']").validate({

        rules: {

            krestnijmeno: "required",
            prijmeni: "required",
            email: {
                required: true,
                email: true
            },
            heslo: {
                required: true,
                minlength: 5
            },
            heslo2: {
                required: true,
                minlength: 5,
                equalTo: "#heslo"
            }
        },

        messages: {
            krestnijmeno: "Vypl??te k??esn?? jm??no",
            prijmeni: "Vypl??te p????jmen??",
            heslo: {
                required: "Vypl??te heslo",
                minlength: "Heslo mus?? obdsahovat minim??ln?? 5 znak??"
            },
            email: "Zadejte platnou emailovou adresu",

            heslo2: {
                required: "Vypl??te ov????en?? hesla",
                minlength: "Heslo mus?? obdsahovat minim??ln?? 5 znak??",
                equalTo: "Hesla se mus?? shodovat"
            },
        },
        submitHandler: function(form) {
            form.submit();
        }
    });
});