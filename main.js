(function () {
    'use strict';
    $('#send').on('click', function () {
        var send = $('#send');
        var result = $('.result');
        var $data = {};
        var valid = true;
        send.prop('disabled', true);
        $('#add-record').find('input').each(function () {
            if ($(this).val().trim().length < 2) {
                valid = false
                result.html("Поле <b>\"" + $(this).attr('data-name') + "\"</b> не может быть пустым");
                send.prop('disabled', false);
                $($(this).attr('id')).focus();
            } else {
                $data[this.id] = $(this).val();
            }
        });
        if (valid) {
            $.ajax({
                url: "ajax.php",
                method: "POST",
                data: $data
            }).done(function (data) {
                result.html(data);
                setTimeout(function () {
                    send.prop('disabled', false);
                }, 1000);
            }).fail(function () {
                result.html("Ошибка");
                setTimeout(function () {
                    send.prop('disabled', false);
                }, 1000);
            })
        }
    })
})();