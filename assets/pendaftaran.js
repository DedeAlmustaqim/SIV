$(document).ready(function() {
    $('#CariRegister').on('keyup', function() {
        $('#TabelRegister').DataTable().search(this.value).draw();
    });


    $.fn.dataTableExt.oApi.fnPagingInfo = function(oSettings) {
        return {
            "iStart": oSettings._iDisplayStart,
            "iEnd": oSettings.fnDisplayEnd(),
            "iLength": oSettings._iDisplayLength,
            "iTotal": oSettings.fnRecordsTotal(),
            "iFilteredTotal": oSettings.fnRecordsDisplay(),
            "iPage": Math.ceil(oSettings._iDisplayStart / oSettings._iDisplayLength),
            "iTotalPages": Math.ceil(oSettings.fnRecordsDisplay() / oSettings._iDisplayLength)
        };
    };



    var table = $('#TabelRegister').DataTable({



        destroy: true,
        "columnDefs": [{
            "visible": false,
            "targets": [],

        }],

        "order": [
            [1, 'asc']
        ],

        "language": {
            "lengthMenu": "Tampilkan _MENU_ item per halaman",

            "info": "Menampilkan Halaman _PAGE_ dari _PAGES_",
            "infoEmpty": "Tidak ada data yang ditampilkan",
            "infoFiltered": "(filtered from _MAX_ total records)",
            "search": "Cari",
            "paginate": {
                "first": "Awal",
                "last": "Akhir",
                "next": "Selanjutnya",
                "previous": "Sebelumnya"
            },
        },

        "lengthMenu": [
            [25, 50, 100, -1],
            [25, 50, 100, "Semua"]
        ],
        "ajax": {
            "url": BASE_URL + "/admin/data_vaksin/json_register",
            "dataSrc": "data",
            "dataType": "json",
        },
        "columns": [

            {
                "orderable": false,
                "data": function(data) {
                    return '<div class="text-center">' + data.id_p + '</div>'

                }

            },
            {
                "orderable": false,
                "data": function(data) {
                    return '<div class="text-left">' + data.nik + ' </div>'


                }

            },
            {
                "orderable": false,
                "data": function(data) {
                    return '<div class="text-left">' + data.nama + ' </div>'


                }

            },
            {
                "orderable": false,
                "data": function(data) {
                    return '<div class="text-left">' + data.alamat + ' </div>'


                }

            },
            {
                "orderable": false,
                "data": function(data) {
                    return '<div class="text-left">' + data.no_hp + ' </div>'


                }

            },
            {
                "orderable": false,
                "data": function(data) {
                    return '<div class="text-left">' + data.created_at_format + ' </div>'


                }

            },
            {
                "orderable": false,
                "data": function(data) {
                    return '<div class="text-center">' +
                        '<div class="button-group">' +
                        '<button type="button" class="btn waves-effect waves-light btn-sm btn-success detail" data-toggle="modal" data-id="' + data.id_p + '"  data-nama="' + data.nama + '" onclick="Regis(this)">Verifikasi</button>' +
                        '</div>' +
                        '</div>'
                }

            },
        ],
        rowCallback: function(row, data, iDisplayIndex) {
            var info = this.fnPagingInfo();
            var page = info.iPage;
            var length = info.iLength;
            var index = page * length + (iDisplayIndex + 1);
            $('td:eq(0)', row).html(index);
        },


    });




});

$('#FormRegister').on('submit', function(e) {

    var postData = new FormData($("#FormRegister")[0]);
    $.ajax({
        type: "post",
        "url": BASE_URL + "admin/data_vaksin/register",
        processData: false,
        contentType: false,
        data: postData, //penggunaan FormData
        //  AMBIL VARIABEL
        dataType: "JSON",
        beforeSend: function() {
            $('#contact').attr('disabled', 'disabled');
        },
        success: function(data) {
            if (data.error) {
                if (data.nik_error != '') {
                    $('#nik_error').html(data.nik_error);
                } else {
                    $('#nik_error').html('');
                }
                if (data.nama_error != '') {
                    $('#nama_error').html(data.alamat_error);
                } else {
                    $('#nama_error').html('');
                }
                if (data.alamat_error != '') {
                    $('#alamat_error').html(data.alamat_error);
                } else {
                    $('#alamat_error').html('');
                }
                if (data.kec_error != '') {
                    $('#kec_error').html(data.kec_error);
                } else {
                    $('#kec_error').html('');
                }
                if (data.desa_error != '') {
                    $('#desa_error').html(data.desa_error);
                } else {
                    $('#desa_error').html('');
                }
                if (data.no_hp_error != '') {
                    $('#no_hp_error').html(data.no_hp_error);
                } else {
                    $('#no_hp_error').html('');
                }
            }
            if (data.success) {
                swal({
                    title: '',
                    type: 'success',
                    text: 'Berhasil Simpan Data',
                    timer: 2000,
                })
                $('#ModalRegister').modal('hide');
                $('#TabelRegister').DataTable().ajax.reload(null, false);
            }
        }

    })
    return false;
});

$('#nik').blur(function() {


    var nik = $('#nik').val();
    $.ajax({
        url: BASE_URL + "admin/data_vaksin/cek_nik",
        method: "POST",
        data: {

            nik: nik
        },
        async: false,
        dataType: 'json',
        success: function(response) {
            if (response == 1) {
                swal({
                    type: 'warning',
                    title: 'Tidak diijinkan',
                    text: 'NIK sudah terdaftar',
                    timer: 2000,
                })
                $('#nik').val('');
            }

        }
    });
});

function Regis(elem) {
    var id = $(elem).data("id");
    var nm = $(elem).data("nama");

    swal({
        title: 'Verifikasi',
        text: 'Yakin untuk Verifikasi ' + nm + ' ?',
        type: "warning",
        showCancelButton: true,
        confirmButtonColor: '#DD6B55',
        cancelButtonColor: '#d33',
        cancelButtonText: 'Batal',
        confirmButtonText: 'YA',

        closeOnConfirm: false,
    }, function(isConfirm) {
        if (!isConfirm) return;
        $.ajax({
            url: BASE_URL + 'admin/data_vaksin/verifikasi_register/',
            type: "POST",
            data: {

                id: id,
            },
            success: function() {
                swal({
                    type: 'success',
                    title: 'Berhasil',
                    text: 'Data diverifikasi',
                    timer: 2000,
                })
                $('#TabelRegister').DataTable().ajax.reload(null, false);
            },
            error: function(xhr, ajaxOptions, thrownError) {
                swal({
                    type: 'warning',
                    title: 'Gagal',
                    timer: 2000,
                })
                $('#TabelRegister').DataTable().ajax.reload(null, false);

            }
        });
    });
}

$('#id_kec').change(function() {

    var id_kec = $(this).val();
    $.ajax({
        url: BASE_URL + "admin/data_vaksin/get_desa",
        method: "POST",
        data: { id_kec: id_kec },
        async: false,
        dataType: 'json',
        success: function(data) {
            var html = '';
            var i;
            for (i = 0; i < data.length; i++) {
                html += '<option value="' + data[i].id_desa + '">' + data[i].nm_desa + '</option>';
            }
            $('#desa_id').html(html);
        }
    });
});