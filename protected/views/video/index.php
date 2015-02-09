<?php
/* @var $this VideoController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Videos',
);

$this->menu=array(
	array('label'=>'Create player', 'url'=>array('create')),
	array('label'=>'Manage player', 'url'=>array('admin')),
);
?>

<h1>Videos</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>