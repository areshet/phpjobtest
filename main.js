(function () {
    $('#send').on('click', function () {
        $('#send').prop('disabled',true);
        var $data = {};

        $('#add-record').find('input').each(function () {
            $data[this.id] = $(this).val();
        });
        $.ajax({
            url: "ajax.php",
            method: "POST",
            data: $data
        }).done(function (data) {
            $('.result').html(data);
            setTimeout(function() { $('#send').prop('disabled',false); }, 1000);
        }).fail(function () {
            $('.result').html("Ошибка");
            setTimeout(function() { $('#send').prop('disabled',false); }, 1000);
        })
    })
})();