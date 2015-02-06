<?php
$dbhost = 'localhost';
$dbuser = 'root';
$dbpass = '';
$conn = mysql_connect($dbhost, $dbuser, $dbpass);
if(! $conn )
{
  die('Could not connect: ' . mysql_error());
}
$id = $_GET['id'];

$sql = "SELECT * FROM tbl_playlist WHERE id='$id'";

mysql_select_db('silvio');
$retval = mysql_query( $sql, $conn );
if(! $retval )
{
  die('Could not get data: ' . mysql_error());
}
while($row = mysql_fetch_array($retval, MYSQL_ASSOC))
{
    echo "ID :{$row['id']}  <br> ".
         "Title: {$row['title']} <br> ".
		 "server: {$row['server']} <br> ".
		 "port: {$row['port']} <br> ".
		 "app: {$row['app']} <br> ".
		 "stream: {$row['stream']} <br> ".
         "rtsp: {$row['rtsp']} <br> ".
         "http: {$row['http']} <br> ".
		 "rtmp: {$row['rtmp']} <br> ".
         "--------------------------------<br>";

$rtsp = $row['rtsp'];
$http = $row['http'];
$rtmp1 = 'rtmp://'.$row['server'].':'.$row['port'].'/'.$row['app'].'/'.$row['stream'];
} 
echo $rtmp1;

?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="hdInformationen"><title>
</title>
</head>
<body style="margin:0; padding:0;">
<script type="text/javascript" src="/js/jquery.min.js" >  </script>
<script type="text/javascript" src="/swfobject.js">
</script>
<div id="videodiv-live">
    <noscript><a href="http://hd-livestream.de/">Video Livestream Hosting</a>. Bitte aktivieren Sie JavaScript in Ihrem Browser (Please enable javascript).</noscript>
</div>
<script type="text/javascript" src="http://www.hd-livestream.de/Player6/jwplayer.js" ></script>
         <script type="text/javascript" src="jwplayer.js" ></script>
		<script type="text/javascript">jwplayer.key="L4LIIFqJjUQeHkLMG9m/o2hGMKWNlyCL/zEn8LP+8eY=";</script>
		<div id='hd-livestream'></div>
		<script type='text/javascript'>
        var js_rtsp = '<?=$rtsp?>';
		var js_http = '<?=$http?>';
		var js_rtmp = '<?=$rtmp1?>';
		
		document.write('here is stream:' + js_rtmp);
		
		
		width = "100%";
        height = "100%";
        //image = 'http://tv.silvretta.at/playout/img/prelogo.jpg'
        rtsp = 'js_rtsp';
        http = 'js_http';
        rtmp = 'js_rtmp';
      
		
		
  if (navigator.userAgent.indexOf("Android 4.") == -1 && navigator.userAgent.indexOf("iPhone") == -1 && navigator.userAgent.indexOf("iPad") == -1 && navigator.userAgent.indexOf("BB10") == -1 && swfobject.hasFlashPlayerVersion("9.0.115")) {
    		jwplayer('hd-livestream').setup({file: js_rtmp, width: $( document).width(), height: $( document).height(),
            rtmp: {
        securetoken: "232612b37dd616a1"
             },
             autostart: 'true'});
    }
    else {
        //+++ iOS iPhone Code +++
        if ( (navigator.userAgent.indexOf("iPhone") >= 0) || (navigator.userAgent.indexOf("iPod") >= 0) ) {
                c = '<video width="'+width+'" height="'+height+'" controls autobuffer poster="'+image+'" source src="'+http+'/playlist.m3u8" type="video/mp4" />';
                document.getElementById('videodiv-live').innerHTML=c;
        }

        //+++ iOS iPad Code +++
        if (navigator.userAgent.indexOf("iPad") >= 0 ) {
                c = '<video width="'+width+'" height="'+height+'" controls autobuffer poster="'+image+'" source src="'+http+'/playlist.m3u8" type="video/mp4" />';
                document.getElementById('videodiv-live').innerHTML=c;
        }

         //+++ RIM Blackberry Code +++
        if (navigator.userAgent.indexOf("BlackBerry") >= 0 ) {
                c = '<a href="'+rtsp+'"><img width="'+width+'" height="'+(parseInt(width)/16*9)+'" src="/images/play.png" alt="Video abspielen (RTP/RTSP)"/> <\/a>';
                document.getElementById('videodiv-live').innerHTML=c;
        }
                
         //+++ Android Code +++
        if (navigator.userAgent.indexOf("Android") >= 0 ) {
                c = '<a href="'+rtsp+'"><img width="'+width+'" height="'+(parseInt(width)/16*9)+'" src="/images//play.png" alt="Video abspielen (RTP/RTSP)"/> <\/a>';
                document.getElementById('videodiv-live').innerHTML=c;
          }                      
        
        //Android 4 und Blackberry BB10 unterstützen HLS-Streaming (wie iOS)
        //KFOT= Kindle Fire 7inch, KFTT = Kindle Fire HD 7", KFJWI & KFJWA = Kindle Fire HD 8.9", BB10 = BlackBerry z.B. Z10
        if (navigator.userAgent.indexOf("Android 4.") >= 0 || navigator.userAgent.indexOf("Android 5.") >= 0 || navigator.userAgent.indexOf("KFOT") >= 0 || navigator.userAgent.indexOf("KFTT") >= 0 || navigator.userAgent.indexOf("KFJWI") >= 0 || navigator.userAgent.indexOf("KFJWA") >= 0 || navigator.userAgent.indexOf("BB10") >= 0 ) {              
                c = '<video controls width="'+width+'" height="'+height+'" poster="'+image+'" src="'+http+'/playlist.m3u8" />';
                document.getElementById('videodiv-live').innerHTML=c;
        }                

     }  
		</script>
        
        

</body>

