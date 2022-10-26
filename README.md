# make files and folders and set their date to be old:

```powershell
mkdir working-directory
# working-directory now exists

New-Item working-directory/old_file
$file = Get-Item working-directory/old_file
$file.LastWriteTime = (Get-Date -Day 1)
# working-directory/old_file now exists and was last changed yesterday

mkdir working-directory/old_dir
$folder = Get-Item working-directory/old_dir
$folder.LastWriteTime = (Get-Date -Day 1)
# working-directory/old_dir now exists and was last changed yesterday

New-Item working-directory/old_dir/another_old_file
$subfolder_file = Get-Item working-directory/old_dir/another_old_file
$subfolder_file.LastWriteTime = (Get-Date -Day 1)
# working-directory/old_dir/another_old_file now exists and was last changed yesterday
```

# sample usage:

```powershell
$dir_list = 'working-directory' #, ...
$days = 1
$outdir = 'outdir'

.\Delete-FilesByAge.ps1 $dir_list "*.*" "" $days $outdir -Recurse
```

