<?php
/**
 * @var Home $this
 */

$this->view("admin/header", $data); ?>

<?php $this->view("admin/sidebar", $data); ?>

<style type="text/css">
  .details {

    background-color: #eee;
    box-shadow: 0px 0px 10px #aaa;
    width: 100%;
    position: absolute;
    min-height: 100px;
    left: 0px;
    padding: 10px;
    z-index: 2;
  }
</style>

<form method="post" enctype="multipart/form-data">
  <table class="table table-striped table-advance table-hover">

    <?php if ($type == "socials"): ?>

      <thead>
        <tr>
          <th class="col-xs-4">Setting</th>
          <th class="col-xs-8">Value</th>
        </tr>
      </thead>

      <tbody>
        <?php if (isset($settings) && is_array($settings)): ?>
          <?php foreach ($settings as $setting): ?>

            <tr>
              <td><?= ucwords(str_replace("_", " ", $setting->setting)) ?></td>
              <td>

                <?php if ($setting->type == "" || $setting->type == "text"): ?>
                  <input placeholder="<?= ucwords(str_replace("_", " ", $setting->setting)) ?>" name="<?= $setting->setting ?>"
                    class="form-control" type="text" value="<?= $setting->value ?>" />

                <?php elseif ($setting->type == "textarea"): ?>
                  <textarea placeholder="<?= ucwords(str_replace("_", " ", $setting->setting)) ?>"
                    name="<?= $setting->setting ?>" class="form-control"
                    style=" height: 250px;"><?= $setting->value ?></textarea>
                <?php endif; ?>

              </td>
            </tr>
          <?php endforeach; ?>
        <?php endif; ?>
      </tbody>

      <input type="submit" value="Save Settings" class="btn btn-warning pull-right">

    <?php elseif ($type == "slider_images"): ?>

      <?php if ($action == "show"): ?>

        <thead>
          <tr>
            <th>Header 1 Text</th>
            <th>Header 2 Text</th>
            <th>Main Message</th>
            <th>Product Link</th>
            <th>Product Image</th>
            <th>Disabled</th>
            <th>Action</th>
          </tr>
        </thead>

        <tbody>
          <?php if (isset($rows) && is_array($rows)): ?>
            <?php foreach ($rows as $row): ?>
              <tr>
                <td><?= $row->header1_text ?></td>
                <td><?= $row->header2_text ?></td>
                <td><?= $row->text ?></td>
                <td><?= $row->link ?></td>
                <td><img src="<?= ROOT . $row->image ?>" style="width:80px;" /></td>
                <td><?= $row->disabled ? "Yes" : "No"; ?></td>
                <td style="width:80px;">
                  <!-- <a href="<?= ROOT ?>admin/settings/slider_images?action=edit&id=<?= $row->id ?>"
                    class="btn btn-primary btn-xs">
                    <i class="fa fa-pencil"> </i>
                  </a> -->

                  <a href="<?= ROOT ?>admin/settings/slider_images?action=delete&id=<?= $row->id ?>"
                    class="btn btn-danger btn-xs"><i class="fa fa-trash-o "></i>
                  </a>

                </td>
              </tr>
            <?php endforeach; ?>
          <?php endif; ?>
        </tbody>

        <a href="<?= ROOT ?>admin/settings/slider_images?action=add">
          <input type="button" value="Add Slider image " class="btn btn-warning pull-right">
        </a>

      <?php elseif ($action == "add"): ?>

        <h2>Add New Slider image</h2>
        <div class="form-group">
          <label for="header1_text">Header 1 Text</label>
          <input autofocus id="header1_text" type="text"
            value="<?= (isset($POST['header1_text'])) ? $POST['header1_text'] : ''; ?>" class="form-control"
            name="header1_text" placeholder="">
        </div>

        <div class="form-group">
          <label for="header2_text">Header 2 Text</label>
          <input id="header2_text" type="text" value="<?= (isset($POST['header2_text'])) ? $POST['header2_text'] : ''; ?>"
            class="form-control" name="header2_text" placeholder="">
        </div>

        <div class="form-group">
          <label for="text">Main Message</label>
          <textarea name="text" id="text"
            class="form-control"><?= (isset($POST['text'])) ? $POST['text'] : ''; ?></textarea>
        </div>

        <div class="form-group">
          <label for="link">Content Link</label>
          <input id="link" type="text" value="<?= (isset($POST['link'])) ? $POST['link'] : ''; ?>" class="form-control"
            name="link" placeholder="e.g http://yourwebsite.com/your_product">
        </div>

        <div class="form-group">
          <label for="image">Slider Image</label>
          <input id="image" type="file" class="form-control" name="image">
        </div>

        <input type="submit" value="Add" class="btn btn-primary">

      <?php elseif ($action == "delete"): ?>


        <div class="status alert alert-danger text-center" style="">
          <b>Are you sure you want to Delete this Slider image??</b>
        </div>
        <!-- <h2>delete Slider image ?</h2> -->
        <div class="form-group">
          <label for="header1_text">Header 1 Text</label>
          <input autofocus id="header1_text" type="text"
            value="<?= (isset($slider->header1_text)) ? $slider->header1_text : ''; ?>" class="form-control"
            name="header1_text">
        </div>

        <div class="form-group">
          <label for="header2_text">Header 2 Text</label>
          <input id="header2_text" type="text" value="<?= (isset($slider->header2_text)) ? $slider->header2_text : ''; ?>"
            class="form-control" name="header2_text" placeholder="">
        </div>

        <div class="form-group">
          <label for="text">Main Message</label>
          <textarea name="text" id="text"
            class="form-control"><?= (isset($slider->text)) ? $slider->text : ''; ?></textarea>
        </div>

        <div class="form-group">
          <label for="link">Content Link</label>
          <input id="link" type="text" value="<?= (isset($slider->link)) ? $slider->link : ''; ?>" class="form-control"
            name="link">
        </div>

        <div class="form-group">
          <label for="image">Image</label>
          <div><img src="<?= ROOT . $slider->image ?>" style="width:15%;" /></div>
        </div>

        <!--  -->

        <div class="pull-right">
          <a href="<?= ROOT ?>admin/settings/slider_images">
            <i type="button" class="btn btn-info">
              << back </i>
          </a>
          <a href="<?= ROOT ?>admin/settings/slider_images?action=delete_confirmed&id=<?= $data['id'] ?>">
            <input type="button" class="btn btn-danger" value="Delete" />
          </a>
          <!-- <input type="submit" value="delete" class="btn btn-danger"> -->
        </div>


        <!--  -->
      <?php elseif ($action == "delete_confirmed"): ?>
        <div class="status alert alert-danger text-center" style="">The slider image was deleted warningfully (WARNING!!!
          IT'S BETA)</div>

        <a href="<?= ROOT ?>admin/settings/slider_images">
          <input type="button" class="btn btn-warning pull-right" value="<< back settings" />
        </a>

      <?php endif; ?>



    <?php endif; ?>

  </table>

</form>

<?php $this->view("admin/footer", $data); ?>