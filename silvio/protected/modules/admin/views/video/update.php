<?php
/* @var $this VideoController */
/* @var $model Video */

$this->breadcrumbs=array(
	'Videos'=>array('index'),
	$model->title=>array('view','id'=>$model->id),
	'Update',
);

$this->menu=array(
	array('label'=>'List player', 'url'=>array('index')),
	array('label'=>'Create player', 'url'=>array('create')),
	array('label'=>'View player', 'url'=>array('view', 'id'=>$model->id)),
	array('label'=>'Manage player', 'url'=>array('admin')),
);
?>

<h1>Update player <?php echo $model->id; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>