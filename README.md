# make files and folders and set their date to be old:

```powershell
$file = Get-Item newdir/newfile
$file.LastWriteTime = (Get-Date -Day 1)
$folder = Get-Item newdir/newdir
$folder.LastWriteTime = (Get-Date -Day 1)
```

# sample usage:

```powershell
$dir_list = 'newdir' #, ...

.\Delete-FilesByAge.ps1 $dir_list "*.*" "" 1 outdir -Recurse
```

