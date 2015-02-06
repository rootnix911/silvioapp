<?php
require('db.php');
$conn = mysql_connect($dbhost, $dbuser, $dbpass);
if(! $conn )
{
  die('Could not connect: ' . mysql_error());
}
$id = $_GET['id'];
$tmpl = $_GET['tmpl'];
$title = $_GET['stream'];

$idsql = "SELECT * FROM tbl_playlist WHERE id='$id'";
$sql = "SELECT * FROM tbl_playlist WHERE title='$title'";

mysql_select_db($dbname);
$retval = mysql_query( $sql, $conn );
if(! $retval )
{
  die('Could not get data: ' . mysql_error());
}
while($row = mysql_fetch_array($retval, MYSQL_ASSOC))
{
$rtsp = $row['rtsp'];
$http = $row['http'];
$tmpl1 = $row['template'];
$rtmp1 = 'rtmp://'.$row['server'].':'.$row['port'].'/'.$row['app'].'/'.$row['stream'];
} 

$sql1 = "SELECT * FROM tbl_template WHERE id='$tmpl1'";
$retval1 = mysql_query( $sql1, $conn );
if(! $retval1 )
{
  die('Could not get data: ' . mysql_error());
}
while($row1 = mysql_fetch_array($retval1, MYSQL_ASSOC))
{
$code_tpl = $row1['code'];
echo"<script type='text/javascript'>
            var js_rtmp = '" .$rtmp1. "';
            console.log(js_rtmp);                                           
        </script>";
   	
echo $code_tpl;

echo '<br />';
}
?>










