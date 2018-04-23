<?php
if (count(get_required_files()) == 1) exit(header('File Not Found', true, 404));
define('DBHOST', 'localhost');
define('DBNAME', 'YOUR DATABASE NAME');
define('DBUSER', 'YOUR DATABASE USERNAME');
define('DBPASS', 'YOUR DATABASE USERPASSWORD');
define('DBPRFX', 'xathx_');
define('VERSION', '1.0.0.0');
define('ENABLED', true);
?>