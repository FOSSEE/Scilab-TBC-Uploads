clc
//initialisation of variables
p= 100//psia
vg= 4.432 //cu ft/lb
vf= 0.01744 //cu ft/lb
T= 327.8 //F
sfg= 1.1286 //Bu/lb R
//CALCULATIONS
Q=(T+460)*sfg
//RESULTS
printf ('Heat of vaourisation= %.f Btu/lb',Q)
