# make files and folders and set their date to be old:

> See: create_testenv.ps1

# sample usage:

> See: run_on_working_dir.ps1

```powershell
$dir_list = 'working-directory' #, ...
$days = 1
$outdir = 'outdir'

.\Delete-FilesByAge.ps1 $dir_list "*.*" "" $days $outdir -Recurse
```

