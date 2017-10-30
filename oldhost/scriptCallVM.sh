#! /bin/bash

# Config

 VALID="ok1.txt"
 ERROR="nok.txt"

 SRCDIR=/var/www/
# DESTDIR=/var/www/
 FILENAME="compress.sh"

# Methods

CallScrpt(){

	#CALL SCRIPT

	if [ -z "${1}" ]; then

        cmd="ssh root@vm 'cd ${SRCDIR} && ./${FILENAME}'"
        echo "Calling ${FILENAME} : ${cmd}"

	        else cmd="ssh root@vm cd ${1} ./${2}"
        	echo "Calling ${SRCDIR}${FILENAME} : ${cmd}"
        fi

        eval ${cmd}
        if [ $? -eq 0 ];
	then
	echo "Successfully created file" >> ${VALID}
	else
	echo "Could not create file" >&2 >> ${ERROR}
	fi

	echo "END"
}

# Main

	if [ -e "${VALID}" ]; then
		rm -f ${VALID}
	fi

	if [ -e "${ERROR}" ]; then
	        rm -f ${ERROR}
        fi
			       
																								      
CallScrpt


























