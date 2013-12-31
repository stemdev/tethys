<?PHP

$config = '/etc/apache2/sites-available/default';
$envvars = '/etc/apache2/envvars';
$serverRoot = '/var/www';

if(isset($argv[1]) && $argv[1] == "-vagrant"){
	
	$changeTo = '/vagrant/html';

	// Modify the user that apache runs as
	$d = file_get_contents($envvars);
	$d = str_ireplace('www-data', 'vagrant', $d);
	file_put_contents($envvars, $d);

} else {
	$changeTo = '/var/www/html';
}

$data = file_get_contents($config);
$updated = str_ireplace($serverRoot, $changeTo, $data);

$overrides = str_ireplace('AllowOverride None', 'AllowOverride All', $updated);

file_put_contents($config, $overrides);

echo "\n\nApache Settings Updated\n\n";