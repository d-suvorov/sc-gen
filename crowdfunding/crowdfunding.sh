#!/bin/bash

for n_states in {1..3}; do
    java -jar ~/projects/EFSM-tools/jars/fast-automaton-generator.jar crowdfunding.sc \
         --ltl crowdfunding.ltl \
         --size $n_states \
         --eventNames donate,getFunds,reclaim \
         --result out/crowdfunding-$n_states.gv \
         --bfsConstraints --globalTree
    dot -Tpng out/crowdfunding-$n_states.gv > out/crowdfunding-$n_states.png
done
