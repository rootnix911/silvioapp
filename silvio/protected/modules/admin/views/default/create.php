<?php
/* @var $this VideoController */
/* @var $model Video */

$this->breadcrumbs=array(
	'Videos'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List player', 'url'=>array('index')),
	array('label'=>'Manage player', 'url'=>array('admin')),
);
?>

<h1>Create player</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>