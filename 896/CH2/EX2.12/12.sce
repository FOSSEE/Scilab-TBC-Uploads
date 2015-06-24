clc
//wooden block floating in two phase mix of water and gasoline
//calc fraction of block in water
SG_wood=0.96;//Specific gravity
SG_gasoline=0.72;
//Let r be the ratio - V_water/V_wood
r=(SG_wood-SG_gasoline)/(1-SG_gasoline);
disp("Fraction of wood in water")
disp(r)