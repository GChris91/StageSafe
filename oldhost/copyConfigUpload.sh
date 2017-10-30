#! /bin/bash

# Config

 VALID="ok4.txt"
 ERROR="nok4.txt"

 SRCDIR1=/home/gchris/Bureau/Safe/
 DESTDIR1=/var/www/limesurvey/
 FILENAME1=upload/

 DESTDIR2=/var/www/limesurvey/application
 FILENAME2=/config



# Methods

copyConfigUpload(){

	#COPY SSh Config and Upload


 	cmd1="scp -r ${SRCDIR1}${FILENAME1} root@vm:${DESTDIR1}"
	cmd2="scp -r ${SRCDIR1}${FILENAME2} root@vm:${DESTDIR2}"
        echo "Copying files : ${cmd1} : ${cmd2}"

        eval ${cmd1}
	eval ${cmd2}


}

 # Main


#	 if [ -e "${VALID}" ]; then
#         rm -f ${VALID}
#  	 fi

#	 if [ -e "${ERROR}" ]; then
#	 rm -f ${ERROR}
#	 fi

copyConfigUpload


