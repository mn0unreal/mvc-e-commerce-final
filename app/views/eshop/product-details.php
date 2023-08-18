<?php
/**
 * @var Home $this
 */
$this->view("header", $data); ?>

<section>
  <div class="container">
    <div class="row">
      <div class="col-sm-3">

        <div class="left-sidebar">

        </div>

      </div>

      <!--start product-->
      <div class="col-sm-9 padding-right">
        <?php if ($ROW): ?>
          <div class="product-details"><!--product-details-->
            <div class="col-sm-5">
              <div class="view-product">
                <img src="<?= ROOT . $ROW->image ?>" alt="" />
                <!-- <h3>ZOOM</h3> -->
              </div>
              <div id="similar-product" class="carousel slide" data-ride="carousel">

                <!-- Wrapper for slides -->
                <div class="carousel-inner">
                  <div class="item active">
                    <a href=""><img src="<?= ROOT . $ROW->image ?>" alt=""></a>
                  </div>
                  <div class="item">
                    <a href=""><img src="<?= ROOT . $ROW->image2 ?>" alt=""></a>
                  </div>
                  <div class="item">
                    <a href=""><img src="<?= ROOT . $ROW->image3 ?>" alt=""></a>
                  </div>
                  <div class="item">
                    <a href=""><img src="<?= ROOT . $ROW->image4 ?>" alt=""></a>
                  </div>

                </div>
                <!-- <?= show($ROW); ?> -->
                <!-- Controls -->
                <a class="left item-control" href="#similar-product" data-slide="prev">
                  <i class="fa fa-angle-left"></i>
                </a>
                <a class="right item-control" href="#similar-product" data-slide="next">
                  <i class="fa fa-angle-right"></i>
                </a>
              </div>

            </div>
            <div class="col-sm-7">
              <div class="product-information"><!--/product-information-->
                <img src="images/product-details/new.jpg" class="newarrival" alt="" />
                <h2><?= $ROW->description ?></h2>
                <p>Web ID: 1089772</p>
                <img src="images/product-details/rating.png" alt="" />
                <span>
                  <span>US $<?= $ROW->price ?></span>
                  <label>Quantity:</label>
                  <input type="text" value="<?= $ROW->quantity ?>" />

                  <a href="<?= ROOT ?>add_to_cart/<?= $ROW->id ?>" class="btn btn-fefault cart"><i
                      class="fa fa-shopping-cart"></i>Add to cart</a>

                </span>
                <!-- <p><b>Availability:</b> In Stock</p> -->
                <!-- <p><b>Condition:</b> New</p> -->
                <!-- <p><b>Brand:</b> E-SHOP</p> -->
                <a href=""><img src="images/product-details/share.png" class="share img-responsive" alt="" /></a>
              </div><!--/product-information-->
            </div>
          </div><!--/product-details-->

          <!--category-tab-->

          <div class="tab-content">

            <div class="tab-pane fade" id="details">
              <div class="col-sm-3">
                <div class="product-image-wrapper">
                  <div class="single-products">
                    <div class="productinfo text-center">
                      <img src="images/home/gallery1.jpg" alt="" />
                      <h2>$56</h2>
                      <p>Easy Polo Black Edition</p>
                      <button type="button" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add
                        to cart</button>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-sm-3">
                <div class="product-image-wrapper">
                  <div class="single-products">
                    <div class="productinfo text-center">
                      <img src="images/home/gallery2.jpg" alt="" />
                      <h2>$56</h2>
                      <p>Easy Polo Black Edition</p>
                      <button type="button" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add
                        to cart</button>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-sm-3">
                <div class="product-image-wrapper">
                  <div class="single-products">
                    <div class="productinfo text-center">
                      <img src="images/home/gallery3.jpg" alt="" />
                      <h2>$56</h2>
                      <p>Easy Polo Black Edition</p>
                      <button type="button" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add
                        to cart</button>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-sm-3">
                <div class="product-image-wrapper">
                  <div class="single-products">
                    <div class="productinfo text-center">
                      <img src="images/home/gallery4.jpg" alt="" />
                      <h2>$56</h2>
                      <p>Easy Polo Black Edition</p>
                      <button type="button" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add
                        to cart</button>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <div class="tab-pane fade" id="companyprofile">
              <div class="col-sm-3">
                <div class="product-image-wrapper">
                  <div class="single-products">
                    <div class="productinfo text-center">
                      <img src="images/home/gallery1.jpg" alt="" />
                      <h2>$56</h2>
                      <p>Easy Polo Black Edition</p>
                      <button type="button" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add
                        to cart</button>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-sm-3">
                <div class="product-image-wrapper">
                  <div class="single-products">
                    <div class="productinfo text-center">
                      <img src="images/home/gallery3.jpg" alt="" />
                      <h2>$56</h2>
                      <p>Easy Polo Black Edition</p>
                      <button type="button" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add
                        to cart</button>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-sm-3">
                <div class="product-image-wrapper">
                  <div class="single-products">
                    <div class="productinfo text-center">
                      <img src="images/home/gallery2.jpg" alt="" />
                      <h2>$56</h2>
                      <p>Easy Polo Black Edition</p>
                      <button type="button" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add
                        to cart</button>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-sm-3">
                <div class="product-image-wrapper">
                  <div class="single-products">
                    <div class="productinfo text-center">
                      <img src="images/home/gallery4.jpg" alt="" />
                      <h2>$56</h2>
                      <p>Easy Polo Black Edition</p>
                      <button type="button" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add
                        to cart</button>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <div class="tab-pane fade" id="tag">
              <div class="col-sm-3">
                <div class="product-image-wrapper">
                  <div class="single-products">
                    <div class="productinfo text-center">
                      <img src="images/home/gallery1.jpg" alt="" />
                      <h2>$56</h2>
                      <p>Easy Polo Black Edition</p>
                      <button type="button" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add
                        to cart</button>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-sm-3">
                <div class="product-image-wrapper">
                  <div class="single-products">
                    <div class="productinfo text-center">
                      <img src="images/home/gallery2.jpg" alt="" />
                      <h2>$56</h2>
                      <p>Easy Polo Black Edition</p>
                      <button type="button" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add
                        to cart</button>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-sm-3">
                <div class="product-image-wrapper">
                  <div class="single-products">
                    <div class="productinfo text-center">
                      <img src="images/home/gallery3.jpg" alt="" />
                      <h2>$56</h2>
                      <p>Easy Polo Black Edition</p>
                      <button type="button" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add
                        to cart</button>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-sm-3">
                <div class="product-image-wrapper">
                  <div class="single-products">
                    <div class="productinfo text-center">
                      <img src="images/home/gallery4.jpg" alt="" />
                      <h2>$56</h2>
                      <p>Easy Polo Black Edition</p>
                      <button type="button" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add
                        to cart</button>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <!-- <div class="tab-pane fade active in" id="reviews"> -->
            <div class="col-sm-12">

            </div>
          </div>

        </div>
      </div>
      <!--/category-tab-->

      <!--end product-->
    <?php else: ?>
      <div style="padding: 1em;background-color: grey;color:white;margin:1em;text-align: center;">
        <h2>That product was not found</h2>
      </div>
    <?php endif; ?>
  </div>

  </div>
  </div>
</section>

<?php $this->view("footer", $data); ?>