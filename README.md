# backupRangeScript

This script allows you to collect your last 500 files,older than a week, at a certain extension and creates tar file then uploads a ftp server. You can specify a certain time range and file count by changing '-mtime +7' and 'tail -n 500'.

##Usage
Once you upload this bash file to a certain folder, simply run bash file. Script will lookup your files and get the oldest file adds 500 and tars the file. Then uploads a ftp server. After uploading tar file, the script will delete original files but the last tar file.

  /bash backupRangeScript.sh
  
##Attention
OS must be Centos,


Your files must contain numbers otherwise the script won't work.

##Changelog
v1 - Only works with files containing numbers.
v2 - Script collects last weeks 500 files and tars.
