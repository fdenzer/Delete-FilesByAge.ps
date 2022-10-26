# Dear Wilo, please overwrite the concrete folders which are searched, and set a reasonable maximum days of age before running:

# sample usage for cleanup after create_testenv script:
$input_directories = 'working-directory', 'another directory with whitespace'

# Imaginary input directories given below, to show that they could contain numbers or whitespace. These are valid input folders.
#$input_directories = 'Ordner1', 'Ordner zwo'

$days = 180

# Next up, we locally use a folder which will be created if necessary for logging output,
# or we may opt to use a path like "C:\Users\Administrator\Desktop\delete_script_logging" or "C:\Benutzer\Erika Mustermann\Desktop\log_verzeichnis".
# Whitespaces are allowed in any input string.
$log_directory = 'log_directory' 



# The next line actually runs script with these parameters.
# Optionally, files to delete (*.*) or exceptions from deletion can be defined as parameters two and three
# Works in recursive mode! This might be dangerous if you have junctions or other hard-links to folders in your directory structure!
.\Delete-FilesByAge.ps1 $input_directories "*.*" "" $days $log_directory -Recurse
