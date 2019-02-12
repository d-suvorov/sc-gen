#!/bin/bash 

for n_states in {2..5}; do
    java -jar ~/projects/EFSM-tools/jars/fast-automaton-generator.jar license.sc \
         --ltl license.ltl \
         --size $n_states \
         --eventNames getLicense,use \
         --result out/license-$n_states.gv \
         --bfsConstraints --globalTree
    dot -Tpng out/license-$n_states.gv > out/license-$n_states.png
done
