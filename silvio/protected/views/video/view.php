<?php
/* @var $this VideoController */
/* @var $model Video */

$this->breadcrumbs=array(
	'Videos'=>array('index'),
	$model->title,
);

$this->menu=array(
	array('label'=>'List player', 'url'=>array('index')),
	array('label'=>'Create player', 'url'=>array('create')),
	array('label'=>'Update player', 'url'=>array('update', 'id'=>$model->id)),
	array('label'=>'Delete player', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage player', 'url'=>array('admin')),
);
?>

<h1>View player #<?php echo $model->id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'id',
		'title',
		'server',
		'port',
		'app',
		'stream',
		'rtsp',
		'http',
		'rtmp',
	),
)); ?>
