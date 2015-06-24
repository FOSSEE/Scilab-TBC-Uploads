clc;
clear all;
Tc=0.3;//given tempareture in kelvin
thetad=300;
//part a
N0g=-1/(log(Tc/thetad));
disp(N0g,'the value of N0g is');
//part b
kB=1.38*1e-23;//boltzmann constant
Eg=3.5*kB*Tc;//energy
disp('J',Eg,'energy is=');

