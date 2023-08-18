<?php

class Slider {

  private $error = "";

  public function create($DATA, $FILES, $image_class = null)
  {
    $this->error = "";

    $DB                  = Database::newInstance();
    $arr['header1_text'] = ucwords($DATA['header1_text']);
    $arr['header2_text'] = ucwords($DATA['header2_text']);
    $arr['text']         = $DATA['text'];
    $arr['link']         = $DATA['link'];

    if (empty($arr['header1_text']) || !preg_match("/^[a-zA-Z 0-9._\-,]+$/", trim($arr['header1_text']))) {
      $this->error .= "Please enter a valid header1_text<br>";
    }

    if (empty($arr['header2_text'])) {
      $this->error .= "Please enter a valid header2_text<br>";
    }

    if (empty($arr['text'])) {
      $this->error .= "Please enter a valid main message<br>";
    }

    if (empty($arr['link'])) {
      $this->error .= "Please enter a valid link<br>";
    }

    if ($this->error == "") {

      $arr['image']  = "";
      $arr['image2'] = "";

      $allowed[] = "image/jpeg";
      $size      = 10;
      $size      = ($size * 1024 * 1024);

      $folder = "uploads/";

      if (!file_exists($folder)) {
        mkdir($folder, 0777, true);
      }

      //check for files
      foreach ($FILES as $key => $img_row) {
        # code...
        if ($img_row['error'] == 0 && in_array($img_row['type'], $allowed)) {
          if ($img_row['size'] < $size) {
            $destination = $folder . $image_class->generate_filename(60) . ".jpg";
            move_uploaded_file($img_row['tmp_name'], $destination);
            $arr[$key] = $destination;

            $image_class->resize_image($destination, $destination, 1500, 1500);
          } else {
            $this->error .= $key . " is bigger than required size<br>";
          }
        }

      }

      $query = "INSERT INTO Slider_images (header1_text,header2_text,text,link,image,image2) values (:header1_text,:header2_text,:text,:link,:image,:image2)";
      $check = $DB->write($query, $arr);

      if ($check) {
        return true;
      }
    }

    return $this->error;

  }

  public function get_all()
  {
    $DB = Database::newInstance();

    $query  = "SELECT * FROM slider_images WHERE disabled = 0";
    $result = $DB->read($query);

    return $result;
  }

  public function get_one($id)
  {

    $id = (int) $id;

    $DB   = Database::newInstance();
    $data = $DB->read("SELECT * FROM slider_images WHERE id = '$id' LIMIT 1");
    return $data[0];
  }

  public function delete($id)
  {
    $id    = (int) $id;
    $DB    = Database::newInstance();
    $query = "DELETE FROM slider_images WHERE id = '$id' LIMIT 1";
    $DB->write($query);
    // show($id);
  }

}