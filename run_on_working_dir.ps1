# sample usage:

$dir_list = 'working-directory', 'another directory with whitespace'
$days = 1
$log_directory = 'log_directory'

.\Delete-FilesByAge.ps1 $dir_list "*.*" "" $days $log_directory -Recurse

