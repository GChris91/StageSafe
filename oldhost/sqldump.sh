#! /bin/bash

# Config

# SRCDIR=/var/www/
 DESTDIR=/var/www/limesurvey/
 BDDNAME="limesurveybdd"

# Methods

mysqldump(){

	#BACKUP SQL


	ssh root@vm "mysqldump -u root -p'password' ${BDDNAME} > ${DESTDIR}${BDDNAME}-backup.sql"
  
         
	 echo "END"

 }


 # Main


#	 if [ -e "${VALID}" ]; then
#         rm -f ${VALID}
#  	 fi

#	 if [ -e "${ERROR}" ]; then
#	 rm -f ${ERROR}
#	 fi

mysqldump

