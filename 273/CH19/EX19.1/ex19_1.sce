clc;clear;
//Example 19.1
//calculation of potential barrier

//given values
e=1.6*10^-19;
n=4.4*10^28;//no of atoms per m^3
kT=.026*e;//temp eqvlnt at room temp
ni=2.4*10^19;//no of intrinsic carriers per m^3
NA=n/10^6;//no of acceptors
ND=n/10^6;//no of donors

//calculation
V=(kT/e)*log(NA*ND/ni^2);
disp(V,'potential barrier in volts is');
