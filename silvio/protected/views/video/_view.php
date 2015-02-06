<?php
/* @var $this VideoController */
/* @var $data Video */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('id')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->id), array('view', 'id'=>$data->id)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('title')); ?>:</b>
	<?php echo CHtml::encode($data->title); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('server')); ?>:</b>
	<?php echo CHtml::encode($data->server); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('port')); ?>:</b>
	<?php echo CHtml::encode($data->port); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('app')); ?>:</b>
	<?php echo CHtml::encode($data->app); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('stream')); ?>:</b>
	<?php echo CHtml::encode($data->stream); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('rtsp')); ?>:</b>
	<?php echo CHtml::encode($data->rtsp); ?>
	<br />

	<?php /*
	<b><?php echo CHtml::encode($data->getAttributeLabel('http')); ?>:</b>
	<?php echo CHtml::encode($data->http); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('rtmp')); ?>:</b>
	<?php echo CHtml::encode($data->rtmp); ?>
	<br />

	*/ ?>

</div>