$(document).ready(function() {


    $(".angkasaja").on("keypress keyup blur", function(event) {
        $(this).val($(this).val().replace(/[^\d].+/, ""));
        if ((event.which < 48 || event.which > 57)) {
            event.preventDefault();
        }
    });
    /* Formatting function for row details - modify as you need */
    //clear data modal
    $("#ModalRegister").on('hide.bs.modal', function(e) {
        $(this).find('form')[0].reset();
    });
});