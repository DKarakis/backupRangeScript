if ! rpm -qa | grep -qw ftp; then
    yum -y install ftp
fi

if find . -mtime +7 -type f | head -n 500 |xargs tar cvf archive_`date +%d-%m-%Y`.tar | xargs rm -f  ; then
    find -type f -printf '%T+ %p\n' | sort | head -n 500 | xargs rm 
fi

HOST='FTP_HOST_ADDRESS'
USER='USERNAME'
PASSWD='PASSWORD'
FILE='*.tar'

ftp -n $HOST <<END_SCRIPT
quote USER $USER
quote PASS $PASSWD
put $FILE
quit
END_SCRIPT
exit 0

