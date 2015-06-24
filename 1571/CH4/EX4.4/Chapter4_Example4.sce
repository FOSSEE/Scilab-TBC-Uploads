clc
clear

//INPUT
d=16*0.000089;//density of the oxygen molecule in gm/cc
p=76;//pressure of the air in cm
g=981;//gravitaitonal accelaration in cm/sec^2
m=13.6;//density of the mercury in gm/cc

//CALCULATIONS
v=((3*p*g*m)/d)^(1/2);//velocuty of the oxygen molecule in cm/sec

//OUTPUT
mprintf('velocity of oxygen molecule is %3.2fcm/sec',v)
