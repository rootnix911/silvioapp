<?php
/* @var $this VideoController */
/* @var $data Video */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('')); ?></b>
        <?php echo CHtml::encode($data->id); ?>
 	<?php #echo CHtml::link(CHtml::encode($data->id), array('view', 'id'=>$data->id)); ?>
	
	<b><?php echo CHtml::encode($data->getAttributeLabel('')); ?></b>
	<?php #echo CHtml::encode($data->title); ?>
        <font size="4" color="blue"><b><?php echo CHtml::link(CHtml::encode($data->title), array('view', 'id'=>$data->id)); ?></b></font>

	<?php /*
	<b><?php echo CHtml::encode($data->getAttributeLabel('server')); ?>:</b>
	<?php echo CHtml::encode($data->server); ?>
	
	<b><?php echo CHtml::encode($data->getAttributeLabel('port')); ?>:</b>
	<?php echo CHtml::encode($data->port); ?> 
	
	<b><?php echo CHtml::encode($data->getAttributeLabel('app')); ?>:</b>
	<?php echo CHtml::encode($data->app); ?>
	
	<b><?php echo CHtml::encode($data->getAttributeLabel('stream')); ?>:</b>
	<?php echo CHtml::encode($data->stream); ?> */ ?>
        
        <?php #printf("<a href=http://54.172.167.185/player.php?id=%s>Test player</a>", $data->id);   ?>   	
       <?php #printf("<a href=player.php?id=%s target=_blank onClick='window.open(location.href=player.php?id=%s width=150,height=150)'>Test player</a>", $data->id, $data->id);   ?>
        <div class="nixbutton"><?php echo CHtml::button('Show', array('onclick' => 'window.open("player.php?stream='.$data->title.'")')); ?> 
        <?php echo CHtml::button('Details', array('submit' => 'index.php?r=admin/default/view&id='.$data->id)); ?>  
        <?php #echo Yii::app()->request->baseUrl;# url'=>array('/site/page', 'view'=>'about')'; ?>
        </div>
         <?php /*
	<b><?php echo CHtml::encode($data->getAttributeLabel('rtsp')); ?>:</b>
	<?php echo CHtml::encode($data->rtsp); ?>
		
	<b><?php echo CHtml::encode($data->getAttributeLabel('http')); ?>:</b>
	<?php echo CHtml::encode($data->http); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('rtmp')); ?>:</b>
	<?php echo CHtml::encode($data->rtmp); ?>
	<br />

	*/ ?>

</div>
