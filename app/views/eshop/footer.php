<footer id="footer"><!--Footer-->
  <div class="footer-top">
    <div class="container">
      <div class="row">
        <div class="col-sm-2">
          <div class="companyinfo">
            <h2><span>e</span>-shop</h2>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,sed do eiusmod tempor</p>
          </div>
        </div>
        <div class="col-sm-7">

        </div>
        <div class="col-sm-3">
          <div class="address">
            <img src="<?= ASSETS . THEME ?>images/home/map.png" alt="" />
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing</p>
          </div>
        </div>
      </div>
    </div>
  </div>

  <div class="footer-widget">
    <div class="container">
      <div class="row">
        <div class="col-sm-2">
          <div class="single-widget">
            <h2>Service</h2>
            <ul class="nav nav-pills nav-stacked">
              <li><a href="#">Online Help</a></li>
              <li><a href="#">Contact Us</a></li>
              <li><a href="#">Order Status</a></li>
              <li><a href="#">Change Location</a></li>
              <li><a href="#">FAQ’s</a></li>
              <?php if (isset($data['user_data']) && $data['user_data']->rank == 'admin'): ?>
                <li><a href="<?= ROOT ?>admin">Admin-Dashboard</a></li>
              <?php endif; ?>
            </ul>
          </div>
        </div>
        <div class="col-sm-2">
          <div class="single-widget">
            <h2>Quock Shop</h2>
            <ul class="nav nav-pills nav-stacked">
              <li><a href="#">T-Shirt</a></li>
              <li><a href="#">Mens</a></li>
              <li><a href="#">Womens</a></li>
              <li><a href="#">Gift Cards</a></li>
              <li><a href="#">Shoes</a></li>
            </ul>
          </div>
        </div>

        <div class="col-sm-2">
          <div class="single-widget">
            <h2>About shop</h2>
            <ul class="nav nav-pills nav-stacked">
              <li><a href="#">Company Information</a></li>
              <li><a href="#">Careers</a></li>
              <li><a href="#">Store Location</a></li>
              <li><a href="#">Affillate Program</a></li>
              <li><a href="#">Copyright</a></li>
            </ul>
          </div>
        </div>
        <div class="col-sm-3 col-sm-offset-1">
          <div class="single-widget">
            <h2>About shop</h2>
            <form action="#" class="searchform">
              <input type="text" placeholder="Your email address" />
              <button type="submit" class="btn btn-default"><i class="fa fa-arrow-circle-o-right"></i></button>
              <p>Lorem ipsum dolor sit amet<br />elit,sed do eiusmod tempor...</p>
            </form>
          </div>
        </div>

      </div>
    </div>
  </div>

  <div class="footer-bottom">
    <div class="container">
      <div class="row">
        <p class="pull-left"></p>
        <p class="pull-right"> <span><a target="_blank" href="#"> </a></span></p>
      </div>
    </div>
  </div>

</footer><!--/Footer-->



<script src="<?= ASSETS . THEME ?>js/jquery.js"></script>
<script src="<?= ASSETS . THEME ?>js/bootstrap.min.js"></script>
<script src="<?= ASSETS . THEME ?>js/jquery.scrollUp.min.js"></script>
<script src="<?= ASSETS . THEME ?>js/price-range.js"></script>
<script src="<?= ASSETS . THEME ?>js/jquery.prettyPhoto.js"></script>
<script src="<?= ASSETS . THEME ?>js/main.js"></script>
</body>

</html>