$(document).ready(function() {


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



    var table = $('#TabelPeserta').DataTable({



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
            "url": BASE_URL + "/admin/data_vaksin/json_peserta",
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
                    return '<div class="text-left">' + data.verif_date + ' </div>'


                }

            },
            {
                "orderable": false,
                "data": function(data) {
                    return '<div class="dropdown">' +
                        '<button class="btn btn-primary btn-sm dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">Aksi</button>' +
                        '<ul class="dropdown-menu" style="margin: 0px;">' +
                        '<li><a class="dropdown-item"  onClick="UnRegis(this)" data-id="' + data.id_p + '" data-nama="' + data.nama + '">Batalkan Verifikasi</a>' +
                        '</li>' +
                        '<li><a class="dropdown-item"  onClick="MarkVaksin(this)" data-id="' + data.id_p + '" data-nama="' + data.nama + '">Tandai Sudah Vaksinasi</a>' +
                        '</li>' +

                        '</ul>' +
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



function MarkVaksin(elem) {
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

function UnRegis(elem) {
    var id = $(elem).data("id");
    var nm = $(elem).data("nama");

    swal({
        title: 'Verifikasi',
        text: 'Yakin untuk Batalkan Verifikasi Pendaftaran ' + nm + ' ?',
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
            url: BASE_URL + 'admin/data_vaksin/unverifikasi_register/',
            type: "POST",
            data: {

                id: id,
            },
            success: function() {
                swal({
                    type: 'success',
                    title: 'Berhasil',
                    text: 'Data dibatalkan verifikasi',
                    timer: 2000,
                })
                $('#TabelPeserta').DataTable().ajax.reload(null, false);
            },
            error: function(xhr, ajaxOptions, thrownError) {
                swal({
                    type: 'warning',
                    title: 'Gagal',
                    timer: 2000,
                })
                $('#TabelPeserta').DataTable().ajax.reload(null, false);

            }
        });
    });
}

function MarkVaksin(elem) {
    var id = $(elem).data("id");
    var nm = $(elem).data("nama");

    swal({
        title: '',
        text: 'Tandai Peserta Sudah Vaksinasi ' + nm + ' ?',
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
            url: BASE_URL + 'admin/data_vaksin/mark_vaksin/',
            type: "POST",
            data: {

                id: id,
            },
            success: function() {
                swal({
                    type: 'success',
                    title: 'Berhasil',
                    text: 'Data dibatalkan verifikasi',
                    timer: 2000,
                })
                $('#TabelPeserta').DataTable().ajax.reload(null, false);
            },
            error: function(xhr, ajaxOptions, thrownError) {
                swal({
                    type: 'warning',
                    title: 'Gagal',
                    timer: 2000,
                })
                $('#TabelPeserta').DataTable().ajax.reload(null, false);

            }
        });
    });
}