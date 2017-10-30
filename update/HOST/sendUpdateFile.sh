#!/bin/bash

#FILENAME: update.sh

############################
#    LimeSurvey Update     #
############################
#  Author   : GChris       #
#  Last Mod : 27/10/2017   #
############################

###########################

############################
#                          #
#         LEFTODO          #
#                          #
############################

#

###########################



############################
#                          #
#         SCRIPTS          #
#                          #
############################


cd /home/gchris/limesurvey.backups/
. scripts/lib.sh
. scripts/config.sh

copyUpdateToServer

echo Fini >> ${log}

#cat ${log}
#rm -f ${lodg}

exit;



############################

############################
#                          #
#         THE END          #
#                          #
############################

