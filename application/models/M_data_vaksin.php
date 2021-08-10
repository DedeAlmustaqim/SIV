<?php
class M_Data_vaksin extends CI_Model
{


    function __construct()
    {
        parent::__construct();
    }

    public function kecamatan()
    {
        $this->datatables->select('*');
        $this->datatables->from('ref_kecamatan');
        return $this->db->get('ref_kecamatan')->result();
    }

    public function tampil_desa($id_kec)
    {
        $this->datatables->select('*');
        $this->datatables->where('id_kec', $id_kec);
        $this->datatables->from('ref_desa');
        return $this->db->get('ref_desa')->result();
    }

    function cek_nik( $nik)
    {
        
        $this->db->where('nik', $nik);
        $query = $this->db->get('tbl_p');
        if ($query->num_rows() > 0) {
            return 1;
        } else {
            return 0;
        }
    }
  

    public function insert_tbl_p($data)
    {
        return $this->db->insert('tbl_p', $data);
    }

    public function json_register()
    {

        $this->datatables->select('*');
        $this->datatables->select('DATE_FORMAT(tbl_p.created_at, "%d/%m/%Y  %H:%i" ) as created_at_format');

        $this->datatables->from('tbl_p');
        $this->datatables->where('status',0);
        $this->db->order_by('created_at', 'desc');
        return $this->datatables->generate();
    }


    public function json_peserta()
    {

        $this->datatables->select('*');
        $this->datatables->select('DATE_FORMAT(tbl_p.verifikasi_date, "%d/%m/%Y  %H:%i" ) as verif_date');

        $this->datatables->from('tbl_p');
        $this->datatables->where('status',1);
        $this->db->order_by('created_at', 'desc');
        return $this->datatables->generate();
    }
   
    
    function verifikasi_register($data, $id)
    {
        
        $this->db->where('id_p', $id);
        $result = $this->db->update('tbl_p', $data);
        return $result;
    }
   

   

    
}
