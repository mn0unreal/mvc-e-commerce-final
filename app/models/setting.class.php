<?php
class Setting {

  private $error = "";

  public function get_all()
  {
    $db    = Database::getInstance();
    $query = "SELECT * FROM settings";
    return $db->read($query);
  }

  public function save($POST)
  {
    $db = Database::getInstance();

    foreach ($POST as $key => $value) {
      $arr          = array();
      $arr['key']   = $key;
      $arr['value'] = $value;
      $query        = "UPDATE settings SET  value = :value WHERE setting = :setting LIMIT 1";
      $db->write($query, $arr);

    }



  }

}

?>