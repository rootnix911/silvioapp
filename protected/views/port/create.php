<?php
/* @var $this PortController */
/* @var $model Port */

$this->breadcrumbs=array(
	'Ports'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List Port', 'url'=>array('index')),
	array('label'=>'Manage Port', 'url'=>array('admin')),
);
?>

<h1>Create Port</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>