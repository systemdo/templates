<?php echo $header; 
$theme_options = $registry->get('theme_options');
$config = $registry->get('config'); 
include('catalog/view/theme/' . $config->get('theme_' . $config->get('config_theme') . '_directory') . '/template/new_elements/wrapper_top.tpl'); ?>

<h2><?php echo $text_my_account; ?></h2>
<ul class="list-unstyled">
  <li><a href="<?php echo $edit; ?>"><?php echo $text_edit; ?></a></li>
  <li><a href="<?php echo $password; ?>"><?php echo $text_password; ?></a></li>
  <li><a href="<?php echo $address; ?>"><?php echo $text_address; ?></a></li>
  <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
</ul>

<?php if ($credit_cards) { ?>
<h2><?php echo $text_credit_card; ?></h2>
<ul class="list-unstyled">
  <?php foreach ($credit_cards as $credit_card) { ?>
  <li><a href="<?php echo $credit_card['href']; ?>"><?php echo $credit_card['name']; ?></a></li>
  <?php } ?>
</ul>
<?php } ?>

<h2><?php echo $text_my_orders; ?></h2>
<ul class="list-unstyled">
  <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
  <li><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li>
  <?php if ($reward) { ?>
  <li><a href="<?php echo $reward; ?>"><?php echo $text_reward; ?></a></li>
  <?php } ?>
  <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
  <li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>
  <li><a href="<?php echo $recurring; ?>"><?php echo $text_recurring; ?></a></li>
</ul>

<h2><?php echo $text_my_affiliate; ?></h2>
<ul class="list-unstyled">
  <?php if(!$tracking) { ?>
  <li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate_add; ?></a></li>
  <?php } else { ?>
  <li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate_edit; ?></a></li>
  <li><a href="<?php echo $tracking; ?>"><?php echo $text_tracking; ?></a></li>
  <?php } ?>
</ul>

<h2><?php echo $text_my_newsletter; ?></h2>
<ul class="list-unstyled">
  <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
</ul>
  
<?php include('catalog/view/theme/' . $config->get('theme_' . $config->get('config_theme') . '_directory') . '/template/new_elements/wrapper_bottom.tpl'); ?>
<?php echo $footer; ?>