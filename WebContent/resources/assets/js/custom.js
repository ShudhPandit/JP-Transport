$(document).ready(function() {
    //============ Scroll to Top ==== =======================
    $(window).scroll(function() {
        if ($(this).scrollTop() >= 50) { // If page is scrolled more than 50px
            $('#return-to-top').fadeIn(200); // Fade in the arrow
        } else {
            $('#return-to-top').fadeOut(200); // Else fade out the arrow
        }
    });
    $('#return-to-top').click(function() { // When arrow is clicked
        $('body,html').animate({
            scrollTop: 0 // Scroll to top of body
        }, 500);
    });

    /* **************signer switcher***************** */
    $('#signin').hide();
    $('#signup').hide();

    $('.In').click(function() {
        $('#signin').slideDown();
        $('#signup').slideUp();
        $('.In').addClass('activeText');
        $('.New').removeClass('activeText');
    });
    $('.New').click(function() {
        $('#signup').slideDown();
        $('#signin').slideUp();
        $('.New').addClass('activeText');
        $('.In').removeClass('activeText');
    });
    /* ********************signer switcher ends********** */

});
