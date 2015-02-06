<?php
/* @var $this VideoController */
/* @var $model Video */
/* @var $form CActiveForm */

?>

<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'video-form',
	// Please note: When you enable ajax validation, make sure the corresponding
	// controller action is handling ajax validation correctly.
	// There is a call to performAjaxValidation() commented in generated controller code.
	// See class documentation of CActiveForm for details on this.
	'enableAjaxValidation'=>false,
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>

	<div class="row">
		<?php echo CHtml::activeLabel($model,'title', array('required' => true)); ?>
		<?php echo $form->textField($model,'title',array('size'=>60,'maxlength'=>255)); ?>
		<?php echo $form->error($model,'title'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'server'); ?>
		<?php echo $form->dropDownList($model,'server',$this->getServersList()); ?>
        <?php echo $form->error($model,'server'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'port'); ?>
	    <?php echo $form->dropDownList($model,'port',$this->getPortList()); ?>
             <?php  ?>
	    <?php #echo $form->dropDownList($model,'port', CHtml::listData(Port::model()->findAll()); ?>	
            <?php echo $form->error($model,'port'); ?>
	</div>

	<div class="row">
           <?php echo CHtml::activeLabel($model,'app', array('required' => true)); ?>
		<?php echo $form->textField($model,'app',array('size'=>60,'maxlength'=>255, 'value'=>'redirect/live')); ?>
		<?php echo $form->error($model,'app'); ?>
	</div>

	<div class="row">
		<?php echo CHtml::activeLabel($model,'stream', array('required' => true)); ?>
		<?php echo $form->textField($model,'stream',array('size'=>60,'maxlength'=>255)); ?>
		<?php echo $form->error($model,'stream'); ?>
	</div>
        
        <div class="row">
                <?php echo $form->labelEx($model,'template'); ?>
                <?php echo $form->dropDownList($model,'template',$this->getTemplateList()); ?>
                <?php #echo $form->textField($model,'rtsp',array('size'=>60,'maxlength'=>255)); ?>
                <?php echo $form->error($model,'template'); ?>
        </div>

<div class="row">
<hr /><br /><b>debug stuff<b/> 
</div>

	<div class="row">
		<?php echo $form->labelEx($model,'http'); ?>
		<?php echo $form->textField($model,'http',array('size'=>60,'maxlength'=>255)); ?>
		<?php echo $form->error($model,'http'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'rtmp'); ?>
		<?php echo $form->textField($model,'rtmp',array('size'=>60,'maxlength'=>255)); ?>
		<?php echo $form->error($model,'rtmp'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->
