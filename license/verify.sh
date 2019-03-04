#!/bin/bash 

java -jar ~/projects/EFSM-tools/jars/verifier.jar -an 1 -en 5 \
     --automaton license.dot \
     --ltl license.ltl \
     --eventNames getLicense,use,publish,remove,noRemove \
     --actionNames terminate
