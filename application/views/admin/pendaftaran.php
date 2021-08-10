<h6 class="mb-0 text-uppercase"><?php echo $judul ?></h6>
<hr>
<div class="card">
    <div class="card-body">

        <button type="button" class="btn btn-primary " data-bs-toggle="modal" data-bs-target="#ModalRegister">+ Registrasi</button>
        <hr>
        <div class="table-responsive">



            <table id="TabelRegister" class="table table-striped table-bordered dataTable" style="width:100%" role="grid" aria-describedby="example_info">
                <thead>
                    <tr role="row">
                        <th class="sorting_asc" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width: 1%;" aria-sort="ascending" aria-label="Name: activate to sort column descending">NO</th>
                        <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width: 10%;" aria-label="Position: activate to sort column ascending">NIK</th>
                        <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width: 15%;" aria-label="Office: activate to sort column ascending">Nama</th>
                        <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width: 20%;" aria-label="Age: activate to sort column ascending">Alamat</th>
                        <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width: 15%;" aria-label="Start date: activate to sort column ascending">No HP</th>
                        <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width: 10%;" aria-label="Salary: activate to sort column ascending">Tgl Daftar</th>
                        <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width: 5%;" aria-label="Salary: activate to sort column ascending">Status</th>
                    </tr>
                </thead>


            </table>





        </div>
    </div>
</div>

<!-- Modal -->
<div class="modal fade" id="ModalRegister" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-lg">
        <div class="modal-content">
            <form class="form-horizontal" novalidate id="FormRegister">
                <div class="card border-top border-0 border-4 border-info">
                    <div class="card-body">
                        <div class="border p-4 rounded">
                            <div class="card-title d-flex align-items-center">
                                <div><i class="bx bxs-user me-1 font-22 text-info"></i>
                                </div>
                                <h5 class="mb-0 text-info">Registrasi Pendaftaran</h5>
                            </div>
                            <hr>
                            <div class="row mb-3">
                                <label for="inputEnterYourName" class="col-sm-3 col-form-label">NIK</label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control angkasaja" id="nik" name="nik" placeholder="NIK" maxlength="16">
                                    <span id="nik_error" class="text-danger"></span>
                                </div>

                            </div>
                            <div class="row mb-3">
                                <label for="inputPhoneNo2" class="col-sm-3 col-form-label">Nama</label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control" id="nama" name="nama" placeholder="NAMA" maxlength="100">
                                    <span id="nama_error" class="text-danger"></span>
                                </div>


                            </div>



                            <div class="row mb-3">
                                <label for="inputAddress4" class="col-sm-3 col-form-label">Alamat</label>
                                <div class="col-sm-9">
                                    <textarea class="form-control" id="alamat" name="alamat" rows="3" placeholder="ALAMAT" maxlength="500"></textarea>
                                    <span id="alamat_error" class="text-danger"></span>

                                </div>

                            </div>
                            <div class="row mb-3">
                                <label for="inputAddress4" class="col-sm-3 col-form-label">Kecamatan</label>
                                <div class="col-sm-9">
                                    <select id="id_kec" name="id_kec" class="single-select">
                                        <option selected="">Pilih Kecamatan</option>
                                        <?php foreach ($kecamatan as $u) { ?>
                                            <option value="<?php echo $u->id_kec ?>"><?php echo $u->nm_kec ?></option>
                                        <?php } ?>
                                    </select> <span id="kec_error" class="text-danger"></span>
                                </div>
                            </div>

                            <div class="row mb-3">
                                <label for="inputAddress4" class="col-sm-3 col-form-label">Kecamatan</label>
                                <div class="col-sm-9">
                                    <select id="desa_id" name="desa_id" class="single-select">
                                        <option selected="">Pilih Desa</option>

                                    </select> <span id="desa_error" class="text-danger"></span>
                                </div>
                            </div>

                            <div class="row mb-3">
                                <label for="inputPhoneNo2" class="col-sm-3 col-form-label">No HP</label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control angkasaja" id="no_hp" name="no_hp" maxlength="12" placeholder="NO HP">
                                    <span id="no_hp_error" class="text-danger"></span>
                                </div>


                            </div>

                            <div class="row">
                                <label class="col-sm-3 col-form-label"></label>
                                <div class="col-sm-9">
                                    <button type="submit" class="btn btn-info px-5">Register</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
</div>