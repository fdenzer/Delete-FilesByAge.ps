# make files and folders and set their date to be old:

> See: create_testenv.ps1

# sample usage:

> See: run_on_working_dir.ps1

```powershell
$input_directories = 'working-directory' #, ...
$days = 1
$log_directory = 'outdir'

.\Delete-FilesByAge.ps1 $input_directories "*.*" "" $days $log_directory -Recurse
```

