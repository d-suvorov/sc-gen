#!/bin/bash 

java -jar ~/projects/EFSM-tools/jars/verifier.jar -an 1 -en 8 \
     --automaton license.dot \
     --ltl license.ltl \
     --eventNames getLicense,getApproval,getCommission,use,publish,remove,noRemove,noPublish \
     --actionNames terminate
