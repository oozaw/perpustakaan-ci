<?php

defined('BASEPATH') or exit('No direct script access allowed');

require APPPATH . '/libraries/REST_Controller.php';

use Restserver\Libraries\REST_Controller;

class Buku extends REST_Controller {
   function __construct() {
      parent::__construct();
      $this->load->database();
   }

   function index_get() {
      $id = $this->get('id_buku');

      if ($id == '') {
         $buku = $this->db->get('tbl_buku')->result();
      } else {
         $this->db->where('id_buku', $id);
         $buku = $this->db->get('tbl_buku')->result();
      }

      if ($buku) {
         $this->response($buku, REST_Controller::HTTP_OK);
      } else {
         $this->response([
            'status' => false,
            'message' => 'No books were found!'
         ], REST_Controller::HTTP_NOT_FOUND);
      }
   }

   function index_post() {
      $data = array(
         'id_buku'  => $this->post('id_buku'),
         'buku_id' => $this->post('buku_id'),
         'id_kategori' => $this->post('id_kategori'),
         'id_rak' => $this->post('id_rak'),
         'sampul' => $this->post('sampul'),
         'isbn' => $this->post('isbn'),
         'lampiran' => $this->post('lampiran'),
         'title' => $this->post('title'),
         'penerbit' => $this->post('penerbit'),
         'pengarang' => $this->post('pengarang'),
         'thn_buku' => $this->post('thn_buku'),
         'isi' => $this->post('isi'),
         'jml' => $this->post('jml'),
         'tgl_masuk' => $this->post('tgl_masuk')
      );

      $this->db->insert('tbl_buku', $data);
      $insert = $this->db->affected_rows();

      if ($insert > 0) {
         $this->response([
            'status' => true,
            'message' => 'A new book has been added',
            'data' => $data
         ], REST_Controller::HTTP_CREATED);
      } else {
         $this->response([
            'status' => false,
            'message' => 'Failed to add a new book!'
         ], REST_Controller::HTTP_BAD_GATEWAY);
      }
   }

   function index_put() {
      $id = $this->put('id_buku');
      $data = array(
         'id_buku'  => $this->post('id_buku'),
         'buku_id' => $this->post('buku_id'),
         'id_kategori' => $this->post('id_kategori'),
         'id_rak' => $this->post('id_rak'),
         'sampul' => $this->post('sampul'),
         'isbn' => $this->post('isbn'),
         'lampiran' => $this->post('lampiran'),
         'title' => $this->post('title'),
         'penerbit' => $this->post('penerbit'),
         'pengarang' => $this->post('pengarang'),
         'thn_buku' => $this->post('thn_buku'),
         'isi' => $this->post('isi'),
         'jml' => $this->post('jml'),
         'tgl_masuk' => $this->post('tgl_masuk')
      );

      $this->db->where('id_buku', $id);
      $this->db->update('tbl_buku', $data);
      $update = $this->db->affected_rows();

      if ($update > 0) {
         $this->response([
            'status' => true,
            'message' => 'A book has been updated',
            'data' => $data
         ], REST_Controller::HTTP_OK);
      } else {
         $this->response([
            'status' => false,
            'message' => 'Failed to update a book!'
         ], REST_Controller::HTTP_BAD_GATEWAY);
      }
   }

   function index_delete() {
      $id = $this->delete('id_buku');

      if ($id == '') {
         $this->response([
            'status' => false,
            'message' => 'Provide an id!'
         ], REST_Controller::HTTP_BAD_REQUEST);
      } else {
         $this->db->where('id_buku', $id);
         $this->db->delete('tbl_buku');
         $delete = $this->db->affected_rows();

         if ($delete > 0) {
            $this->response([
               'status' => true,
               'id' => $id,
               'message' => 'A book has been deleted'
            ], REST_Controller::HTTP_OK);
         } else {
            $this->response([
               'status' => false,
               'message' => 'Id not found!'
            ], REST_Controller::HTTP_BAD_REQUEST);
         }
      }
   }
}
