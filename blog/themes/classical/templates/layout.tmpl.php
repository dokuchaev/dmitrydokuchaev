<div class="common">

 
<div class="level">
  
<?php _X ('header-pre') ?>

<!-- <div class="logo">
<?php _T ('user-picture') ?>
</div>
 -->
<div class="flag">

<div class="title">
<h1>
  <?= _A ('<a href="'. $content['blog']['href']. '"><span id="e2-blog-title">'. $content['blog']['title']. '</span></a>') ?> 
  <?php 
    if (
      array_key_exists ('admin-hrefs', $content)
      and array_key_exists ('name-and-author', $content['admin-hrefs'])
      and !_AT ($content['admin-hrefs']['name-and-author'] )
    ) { 
  ?>
    <a href="<?= $content['admin-hrefs']['name-and-author'] ?>" class="nu"><span class="i-edit-small"></span></a>
  <?php } ?>
  <a class="rss" href="<?=@$content['blog']['rss-href']?>"><?= _S ('gs--rss') ?></a>
</h1>
</div>



<div class="intro">
  <span id="e2-blog-description"><?= $content['blog']['description'] ?></span>
</div>

</div>

<?php _X ('header-post') ?>

</div>




<div class="level">

<?php if ($content['notes']) { ?>
<div class="sidebar">
  
<div class="handle"></div>

<?php _X ('sidebar-pre') ?>

<div class="widget">
<?php _T_FOR ('tags-menu') ?>
</div>

<div class="widget">
<?php _T_FOR ('favourites') ?>
</div>

<div class="widget">
<?php _T_FOR ('most-commented') ?>
</div>


<?php _X ('sidebar-post') ?>

</div>
<?php } ?>

<div class="content">
<?php _T ('heading') ?>
<?php _T ('message') ?>
<?php _T ('welcome') ?>
<?php _T ('drafts') ?>
<?php _T ('notes') ?>
<?php _T ('notes-list') ?>
<?php _T ('tags') ?>
<?php _T ('sessions') ?>
<?php _T ('pages') ?>
<?php _T ('comments') ?>
<?php _T ('popular') ?>
<?php _T ('unsubscribe') ?>
<?php _T ('form') ?>
</div>

</div>




<div class="level">
<div class="footer">
<?php _X ('footer-pre') ?>
<div class="foot">Почта: <a href="mailto:mail@dmitrydokuchaev.ru">mail@dmitrydokuchaev.ru</a><br>©<span id="e2-blog-author"><?= @$content['blog']['author'] ?></span>, <?=$content['blog']['years-range']?> </div>
<?php # please do not remove: #?>
<div class="engine">
<?=$content['engine']['about']?>
<?php if ($content['sign-in']['done?']) { ?>
&nbsp;&nbsp;&nbsp;
<span title="<?= _S ('gs--pgt') ?>"><?=$content['engine']['pgt']?> <?= _S ('gs--seconds-contraction') ?></span>
<?php } ?>
</div>
<?php _X ('footer-post') ?>
</div>
</div>




</div>