<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Data_vaksin extends CI_Controller
{

    public function __construct()
    {

        parent::__construct();

        $this->load->model('m_data_vaksin');
        $this->load->helper('url');
        $this->load->library('datatables');
    }

    public function index()
    {
        $this->load->library('template');
      
        $data['judul'] = "Data Vaksin";
        $this->template->konten('admin/data_vaksin', $data);
    }

    public function pendaftaran()
    {
        $this->load->library('template');
        $data['kecamatan'] = $this->m_data_vaksin->kecamatan();
        $data['judul'] = "Data Pendaftaran";
        $this->template->konten('admin/pendaftaran', $data);
    }
    public function get_desa()
	{
		$id_kec = $this->input->post('id_kec');
		$data = $this->m_data_vaksin->tampil_desa($id_kec);
		echo json_encode($data);
	}
    public function peserta()
    {
        $this->load->library('template');
        $data['judul'] = "Rekapitulasi Peserta Terdaftar";
        $this->template->konten('admin/peserta', $data);
    }

    public function cek_nik()
	{
		
		$nik = $this->input->post('nik');

		$result = $this->m_data_vaksin->cek_nik($nik);
		if ($result) {
			echo  1;
		} else {
			echo  0;
		}
	}
    public function valid_register()
    {
        $this->load->library('form_validation');
        $this->form_validation->set_rules('nik', 'NIK', 'trim|required|numeric|min_length[16]|max_length[16]');
        $this->form_validation->set_rules('nama', 'Nama', 'trim|required');
        $this->form_validation->set_rules('alamat', 'Alamat', 'trim|required');
        $this->form_validation->set_rules('id_kec', 'Kecamatan', 'trim|required');
        $this->form_validation->set_rules('desa_id', 'Desa', 'trim|required');
        $this->form_validation->set_rules('no_hp', 'No Hp', 'trim|required|numeric|min_length[11]|max_length[12]');

        return $this->form_validation->run();
    }

  

    public function register()
    {
        $this->load->helper(['form', 'string']);

        if ($this->valid_register()) {
            $id = random_string('alnum', 25);
            $nik      = $this->input->post('nik', true);
            $nama      = $this->input->post('nama', true);
            $alamat      = $this->input->post('alamat', true);
            $id_kec      = $this->input->post('id_kec', true);
            $desa_id      = $this->input->post('desa_id', true);
            $no_hp      = $this->input->post('no_hp', true);


            $data = array(
                'id_p'                => $id,
                'nik'                => $nik,
                'nama'        => $nama,
                'alamat'                => $alamat,
                'id_kec'                => $id_kec,
                'desa_id'                => $desa_id,
                'no_hp'                => $no_hp,
                //'created_at'     => date('Y-m-d H:i:s'),
                //'create_by'      => $this->session->userdata('ses_nm'),
            );
            $this->m_data_vaksin->insert_tbl_p($data);
            $array = array(
                'success' => true
            );
        } else {
            $array = array(
                'error'   => true,
                'nik_error' => form_error('nik'),
                'nama_error' => form_error('nama'),
                'alamat_error' => form_error('alamat'),
                'kec_error' => form_error('id_kec'),
                'desa_error' => form_error('desa_id'),
                'no_hp_error' => form_error('no_hp')
            );
        }
        echo json_encode($array);
    }

    function json_register()
	{
		$data = $this->m_data_vaksin->json_register();
		header('Content-Type: application/json');
		echo $data;
	}

    function json_peserta()
	{
		$data = $this->m_data_vaksin->json_peserta();
		header('Content-Type: application/json');
		echo $data;
	}

    private function cek_verif_register()
	{
		$this->load->library('form_validation');
		$this->form_validation->set_rules('id', 'id', 'trim|required');
		return $this->form_validation->run();
	}
	public function verifikasi_register()
	{
        $id = $this->input->post('id');
		if ($this->cek_verif_register()) {
            $data = array(
                'status'        => 1,
                'verifikasi_date'        => date('Y-m-d H:i:s'),
            );
            $this->m_data_vaksin->verifikasi_register($data, $id);
            echo json_encode($data);
        } else {
            echo "error";
        }
	}

    private function cek_unverif_register()
	{
		$this->load->library('form_validation');
		$this->form_validation->set_rules('id', 'id', 'trim|required');
		return $this->form_validation->run();
	}
	public function unverifikasi_register()
	{
        $id = $this->input->post('id');
		if ($this->cek_unverif_register()) {
            $data = array(
                'status'        => 0,
                'verifikasi_date'        => null,
            );
            $this->m_data_vaksin->verifikasi_register($data, $id);
            echo json_encode($data);
        } else {
            echo "error";
        }
	}

    private function cek_mark_vaksin()
	{
		$this->load->library('form_validation');
		$this->form_validation->set_rules('id', 'id', 'trim|required');
		return $this->form_validation->run();
	}
	public function mark_vaksin()
	{
        $id = $this->input->post('id');
		if ($this->cek_mark_vaksin()) {
            $data = array(
                'status'        => 3,
                'vaksinasi_date'        => date('Y-m-d H:i:s'),
            );
            $this->m_data_vaksin->verifikasi_register($data, $id);
            echo json_encode($data);
        } else {
            echo "error";
        }
	}
}
