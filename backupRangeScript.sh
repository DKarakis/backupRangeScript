FILE=$(ls | head -1)

num=`basename $FILE .EXTENSION`
 x=500
(( num += x ))
result=`basename $FILE .EXTENSION`-$num

if find . -mtime +7 -type f | tail -n 500 |xargs tar cvf $result.tar | xargs rm -f  ; then
    find . -mtime +7 -type f | tail -n 500 | xargs rm 
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

