#! /bin/bash

###############################
# Script d'upgrade LimeSurvey #
###############################

#############################################
# 01) Connection SSH Server                 #
# 02) Export bdd		            #
# 03) Archive bdd	                    #
# 04) Cp bdd sur host                       #
# 05) Archive /var/www/limesurvey           #
# 06) Cp archive limesurvey sur host        #
# 07) Cp limesurvey/application/config      #
# 08) Cp limesurvey/upload                  #
# 09) Rm old limesurvey                     #
# 10) Cp new limesurvey from host to server #
# 11) Cp config & upload sur new limesurvey #
# 12) Import bdd                            #
#############################################

function connectionServer {
 ssh root@vm
}
connectionServer
