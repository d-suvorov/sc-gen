#!/bin/bash

for n_states in {3..5}; do
    java -jar ~/projects/EFSM-tools/jars/fast-automaton-generator.jar game.sc \
         --ltl game.ltl \
         --size $n_states \
         --eventNames send,claim \
         --result out/game-$n_states.gv \
         --bfsConstraints --globalTree
    dot -Tpng out/game-$n_states.gv > out/game-$n_states.png
done
