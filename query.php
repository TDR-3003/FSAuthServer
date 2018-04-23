<?php
if (count(get_required_files()) == 1)
	exit(header('Direct Access Forbidden', true, 403));

define('REALAUTH', 'SELECT `' . DBPRFX . 'key`.`id` FROM `' . DBPRFX . 'key` WHERE `' . DBPRFX . 'key`.`license` = ? AND `' . DBPRFX . 'key`.`uniquex` = ? LIMIT 1');
define('CLIENTAUTH', 'UPDATE `' . DBPRFX . 'key` SET `client` = ? WHERE `' . DBPRFX . 'key`.`id` = ?');
define('LEVELCHECK', 'SELECT `' . DBPRFX . 'accs`.`level` FROM `' . DBPRFX . 'accs` WHERE `' . DBPRFX . 'accs`.`id` = ? AND `' . DBPRFX . 'accs`.`uniquex` = ? LIMIT 1');
define('SERVERAUTH', 'UPDATE `' . DBPRFX . 'key` SET `server` = ? WHERE `' . DBPRFX . 'key`.`id` = ?');
define('WEBCHECK', 'SELECT `' . DBPRFX . 'info`.`company`, `' . DBPRFX . 'info`.`type`, `' . DBPRFX . 'info`.`version`, `' . DBPRFX . 'info`.`regdate`, `' . DBPRFX . 'info`.`expdate` FROM `' . DBPRFX . 'info` INNER JOIN `' . DBPRFX . 'key` ON `' . DBPRFX . 'info`.`id` = `' . DBPRFX . 'key`.`id` WHERE `' . DBPRFX . 'info`.`name` = ? AND `' . DBPRFX . 'key`.`license` = ? LIMIT 1');
?>