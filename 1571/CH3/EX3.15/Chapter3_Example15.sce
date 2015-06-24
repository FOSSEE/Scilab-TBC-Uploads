clc
clear

//INPUT DATA 
n=1/273;//coefficent of expaaansion of air
a=0.001293;//density of air in gm/cc
cp=0.2389;//specific heat at constant pressure in kj/kg.K
p=76*13.6*981;//pressure at 0 deg.C in dynes

//CALCULATIONS
J=(p*n)/(a*(cp-(cp/1.405)));//mechanical equivalent of heat

//OUTPUT
mprintf('mechanical equivalent of heat is %3.2f ergs/cal',J)
