<?php
/* @var $this TemplateController */
/* @var $data Template */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('id')); ?>:</b>
        <?php echo CHtml::encode($data->id); ?>
	<?php #echo CHtml::link(CHtml::encode($data->id), array('view', 'id'=>$data->id)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('title')); ?>:</b>
        <?php echo CHtml::link(CHtml::encode($data->title), array('view', 'id'=>$data->id)); ?>
        <?php #echo CHtml::encode($data->title); ?>
	<br />

	<b><?php #echo CHtml::encode($data->getAttributeLabel('code')); ?>:</b>
	<?php #echo CHtml::encode($data->code); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('comment')); ?>:</b>
	<?php echo CHtml::encode($data->comment); ?>
	<br />


</div>
