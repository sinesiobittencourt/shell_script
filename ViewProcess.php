<?php

$seconds = 1 ;

$url=$_SERVER['REQUEST_URI'];

header("Refresh: $seconds; URL=$url");

$processes = shell_exec("ps faux"); 

echo "<pre>$processes</pre>";
?>
