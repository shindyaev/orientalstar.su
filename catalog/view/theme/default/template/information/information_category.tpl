<?php echo $header; ?>
<div class="container infocontainer">

  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?> information"><?php echo $content_top; ?>
      <?php include DIR_APPLICATION . '/view/theme/default/template/_breadcrumb.tpl'; ?>
      <h1><?php echo $heading_title; ?></h1>

        
        <div class="row">
			<?php foreach ($informations as $information) { ?>
                    <div class="col-lg-4 col-sm-4 col-xs-12 postInfoBlock">
                        <a class="thumbnail" href="<?php echo $information['href']; ?>"><img src="<?php echo $information['thumb']; ?>" alt="<?php echo $information['name']; ?>" title="<?php echo $information['name']; ?>" class="img-responsive" /></a>
                        <div class="postInfo">
	                        <div class="h5"><a href="<?php echo $information['href']; ?>"><?php echo $information['name']; ?></a></div>
	                        <?php if ($information['date']) { ?>
	                            <p class="text-muted hidden"><i class="fa fa-calendar"></i> &nbsp;<?php echo $information['date']; ?></p>
	                        <?php } ?>
	                        <p class="hidden"><?php echo $information['short_description']; ?></p>
                        </div>
                    </div>
			<?php } ?>
        </div>
        

      <?php echo $description; ?><?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php /*
    <script>
        $( document ).ready(function() {
            cols = $('#column-right, #column-left').length;

            if (cols == 2) {
                $('#content .product-list').attr('class', 'product-layout product-grid col-lg-6 col-md-6 col-sm-12 col-xs-12');
            } else if (cols == 1) {
                $('#content .product-list').attr('class', 'product-layout product-grid col-lg-4 col-md-4 col-sm-6 col-xs-12');
            } else {
                $('#content .product-list').attr('class', 'product-layout product-grid col-lg-3 col-md-3 col-sm-6 col-xs-12');
            }
        });
    </script>
    */ ?>
<?php echo $footer; ?>