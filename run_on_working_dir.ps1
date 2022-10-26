# sample usage for cleanup after create_testenv script:
#$input_directories = 'working-directory', 'another directory with whitespace'



# Dear Wilo, please overwrite these folders, and maximum days of age:
$input_directories = 'Ordner1', 'Ordner zwo'
$days = 180
$log_directory = 'log_directory'  # locally, or use a path like "C:\Users\Administrator\Desktop\delete_script_logging" or "C:\Benutzer\Erika Mustermann\Desktop\log_verzeichnis". Whitespaces are allowed in any input string.



# actually run script with these parameters. Optionally, files to delete (*.*) or exceptions from deletion can be defined as parameters two and three
# Works in recursive mode! This might be dangerous if you have junctions or other hard-links to folders in your directory structure!
.\Delete-FilesByAge.ps1 $input_directories "*.*" "" $days $log_directory -Recurse
