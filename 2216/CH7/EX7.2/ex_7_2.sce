//Example 7.2: Diffusion potential
clc;
clear;
close;
format('v',6)
//given data :
Na=5*10^23;// in m^-3
Nd=5*10^21;// in m^-3
T=300;// in K
e=1.6*10^-19;// in J
k=1.38*10^-23;// in JK^-1
V=(k*T)/e;
ni=2.2*10^12;// in m^-3
Vd=V*log((Na*Nd)/ni^2);
disp(Vd,"Diffusion potential,Vd(V) = ")
