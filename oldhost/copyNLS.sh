#! /bin/bash

# Config

 VALID="ok4.txt"
 ERROR="nok4.txt"

 SRCDIR1=/home/gchris/Téléchargements/
 DESTDIR1=/var/www/
 FILENAME1="limesurvey2.72.1+171012.tar.gz"


 SRCDIR2=/var/www/scripts/
# DESTDIR2=/var/www/
 FILENAME2="extract2.sh"



# Methods

copyNLS(){

	#COPY SSH NLS


 	cmd="scp -r ${SRCDIR1}${FILENAME1} root@vm:${DESTDIR1}"
        echo "Copying files : ${cmd}"

        eval ${cmd}

#       if [ $? -eq 0 ]
#       then
#         echo "Successfully created file" >> ${VALID}
#       else
#         echo "Could not create file" >&2 >> ${ERROR}
#       fi


	echo "END"

 }

callExtract(){

	#CALL SCRIPT EXTRACT

#	if [ -z "${1}" ]; then

	cmd="ssh root@vm 'cd ${SRCDIR2} && ./${FILENAME2}'"
	echo "Calling ${FILENAME2} : ${cmd}"
	
#		else cmd="ssh root@vm 'cd ${1} && ./${2}"
#		echo "Calling ${SRCDIR}${FILENAME} : ${cmd}"
#	fi

	eval ${cmd}

#	if [ $? -eq 0 ];
#	then 
#	echo "Successfully called file" >> ${VALID}
#	else
#	echo "Could not call file" >&2 >> ${ERROR}
#	fi

	echo "END"

}


 # Main


#	 if [ -e "${VALID}" ]; then
#         rm -f ${VALID}
#  	 fi

#	 if [ -e "${ERROR}" ]; then
#	 rm -f ${ERROR}
#	 fi

copyNLS
callExtract

