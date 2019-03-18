#!/bin/bash

for n_states in {1..5}; do
    java -jar ~/projects/EFSM-tools/jars/fast-automaton-generator.jar blinded-auction.sc \
         --ltl blinded-auction.ltl \
         --size $n_states \
         --eventNames bid,unbid,close,cancel,reveal,finish,withdraw \
         --varNames biddingOver,revealOver \
         --result out/blinded-auction-$n_states.gv \
         --bfsConstraints --globalTree
    dot -Tpng out/blinded-auction-$n_states.gv > out/blinded-auction-$n_states.png
done
