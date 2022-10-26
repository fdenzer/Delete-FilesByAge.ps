# make files and folders and set their date to be old:

New-Item -ItemType Directory -Force -Path 'working-directory'
# working-directory now exists

New-Item 'working-directory/old_file'
$file = Get-Item working-directory/old_file
$file.LastWriteTime = (Get-Date -Day 1)
# working-directory/old_file now exists and was last changed yesterday

New-Item -ItemType Directory -Force -Path 'working-directory/old_dir'
$folder = Get-Item working-directory/old_dir
$folder.LastWriteTime = (Get-Date -Day 1)
# working-directory/old_dir now exists and was last changed yesterday

New-Item 'working-directory/old_dir/another_old_file'
$subfolder_file = Get-Item working-directory/old_dir/another_old_file
$subfolder_file.LastWriteTime = (Get-Date -Day 1)
# working-directory/old_dir/another_old_file now exists and was last changed yesterday

New-Item -ItemType Directory -Force -Path 'another directory with whitespace'
# ``another directory with whitespace'' now exists

New-Item 'another directory with whitespace/third_file'
$third_file = Get-Item 'another directory with whitespace/third_file'
$third_file.LastWriteTime = (Get-Date -Day 1)
# another directory with whitespace/third_file now exists and was last changed yesterday
