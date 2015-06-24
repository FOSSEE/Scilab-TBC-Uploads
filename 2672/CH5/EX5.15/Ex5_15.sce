//Example 5_15
clc;
clear;
close;
format('v',7);
//given data : 
e=1.6*10^-19;//C/electron
J0=500;//mA/m^2
J0=J0/1000;//A/m^2
T=350;//K
Eta=1;//For Ge
k=1.38*10^-23;//Boltzman constant
J=10^5;//Am^-2
//J=J0*(exp(e*V/Eta/kT-1)
V=(1+log(J/J0))/e*Eta*k*T;//V
disp(V,"Voltage to be applied at junction(V)");
//Answer given in the book is not accurate.
