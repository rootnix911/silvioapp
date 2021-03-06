<?php /* @var $this Controller */ ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="language" content="en" />

	<!-- blueprint CSS framework -->
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->theme->baseUrl; ?>/css/screen.css" media="screen, projection" />
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->theme->baseUrl; ?>/css/print.css" media="print" />
	<!--[if lt IE 8]>
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->theme->baseUrl; ?>/css/ie.css" media="screen, projection" />
	<![endif]-->
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->theme->baseUrl; ?>/css/main.css" />
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->theme->baseUrl; ?>/css/form.css" />
	

	<title><?php echo CHtml::encode($this->pageTitle); ?></title>
</head>

<body>
<div style="width:100%;background: #191818;border-bottom: 1px solid #393939;color: #ccc;height:60px">
<div id="logo" style="float:left"><?php echo CHtml::encode(Yii::app()->name); ?>
</div>

<div id="mainmenu" style="float:left;padding-top:15px">
		<?php $this->widget('zii.widgets.CMenu',array(
			'items'=>array(
                array('label'=>'Clients', 'url'=>array('/admin/clients')),
                array('label'=>'Servers/Add server', 'url'=>array('/admin/server')),
                array('label'=>'Ports/Add Port', 'url'=>array('/admin/port')),
                array('label'=>'Playlist', 'url'=>array('/admin/video')),
                array('label'=>'Templates', 'url'=>array('/admin/template')),
                                array('label'=>'Login', 'url'=>array('/site/login'), 'visible'=>Yii::app()->user->isGuest),
				array('label'=>'Logout ('.Yii::app()->user->name.')', 'url'=>array('/site/logout'), 'visible'=>!Yii::app()->user->isGuest)
			),
		)); ?>
	</div><!-- mainmenu -->


</div>
<div id="cssmenu" style="float:left;padding-top:20px;padding-bottom:250px">
		<?php $this->widget('zii.widgets.CMenu',array(
			'items'=>array(
                array('label'=>'Clients', 'url'=>array('/admin/clients')),     
		array('label'=>'Servers/Add Server', 'url'=>array('/admin/server')),
                array('label'=>'Ports/Add Port', 'url'=>array('/admin/port')),
                array('label'=>'Playlist', 'url'=>array('/admin/video')),
                array('label'=>'Templates', 'url'=>array('/admin/template')),
                                array('label'=>'Login', 'url'=>array('/site/login'), 'visible'=>Yii::app()->user->isGuest),
				array('label'=>'Logout ('.Yii::app()->user->name.')', 'url'=>array('/site/logout'), 'visible'=>!Yii::app()->user->isGuest)
			),
		)); ?>
	</div><!-- mainmenu -->
	
	<div class="container" id="page">

	<div id="header">
		
	</div><!-- header -->

	
	
	<?php if(isset($this->breadcrumbs)):?>
		<?php $this->widget('zii.widgets.CBreadcrumbs', array(
			'links'=>$this->breadcrumbs,
		)); ?><!-- breadcrumbs -->
	<?php endif?>

	<?php echo $content; ?>

	<div class="clear"></div>

	<div id="footer">
		Copyright &copy; <?php echo date('Y'); ?> by Nixsolutions.<br/>
		All Rights Reserved.<br/>
	</div><!-- footer -->

</div><!-- page -->

</body>
</html>
