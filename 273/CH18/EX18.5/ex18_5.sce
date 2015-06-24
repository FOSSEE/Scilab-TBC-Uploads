clc;clear;
//Example 18.5
//calculation of resistivity

//given values
e=1.6*10^-19;
ni=2.5*10^19;//intrinsic density of carriers per m^3
ue=.39;//mobility of e 
uh=.19;//mobility of hole


//calculation
c=e*ni*(ue+uh);//conductivity
r=1/c;//resistivity
disp(r,'resistivity in ohm m is');