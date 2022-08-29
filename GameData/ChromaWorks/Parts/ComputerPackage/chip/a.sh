#!/bin/bash

for i in *cfg; do

	sed -i 's/node_stack_top.*/node_stack_top = 0.3125, 0.0, 0.0, -1.0, 0.0, 0.0, 0/' $i
	sed -i 's/maxTemp.*/maxTemp = 900 \/\/chips do not usually like overheating/' $i
	sed -i 's/emissiveConstant.*/emissiveConstant = 0.95 \/\/but they are pretty good at radiating heat/' $i
	sed -i 's/mass =.*/mass = 0.01/' $i
	sed -i 's/attachRules.*/attachRules = 1,0,0,0,1 \/\/disable surface attach/' $i
	sed -i 's/PhysicsSignificance=.*/PhysicsSignificance = 1/' $i
done
