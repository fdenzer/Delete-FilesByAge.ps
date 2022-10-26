# Dear Wilo, first note that:

1. The script works in recursive mode! This might be dangerous if you have junctions or other hard-links to folders in your directory structure!

2. Please overwrite the concrete folders which are searched, and set a reasonable maximum days of age before running.

    - Either do this on a command line, using the following three lines to configure the script, then run it with the last line (after the comment).

    - Or modify the run_on_working_dir.ps1 script file, which contains these three configuration lines as well. Then you may execute the script using always the same parameters.

```powershell
$input_directories = 'Ordner1', 'Ordner zwo'
$days = 180
$log_directory = 'log_directory'  # locally, or use a path like "C:\Users\Administrator\Desktop\delete_script_logging" or "C:\Benutzer\Erika Mustermann\Desktop\log_verzeichnis". Whitespaces are allowed in any input string.

# actually run script with these parameters. Optionally, files to delete (*.*) or exceptions from deletion can be defined as parameters two and three
.\Delete-FilesByAge.ps1 $input_directories "*.*" "" $days $log_directory -Recurse
```


# To test the script...

* we provide a create test environment script to create files and folders and set their date to be old.

* See: create_testenv.ps1

* Then take a look into 

> run_on_working_dir.ps1

and run it to clean up these files.