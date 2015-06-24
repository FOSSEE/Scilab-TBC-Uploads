//Exa 7.11
clc;
clear;
close;
//given data
epsilon1=.04;
epsilon2=epsilon1;
T1=-153+273;// in K
T2=27+273;// in K
h_fg=209;// in kJ/kg
h_fg=h_fg*10^3;// in J/kg
d1=20*10^-2;// in m
d2=30*10^-2;// in m
A1=d1^2;// in square meter
A2=d2^2;// in square meter
A=4*%pi*(d2-d1)^2;
Fg12=1/((1/epsilon1+(1/epsilon2-1)*A1/A2));
sigma=5.67*10^-8;    
q12=sigma*A*Fg12*(T1^4-T2^4);// in W
disp(q12,"Net radiant heat transfer rate in watt")
disp("Negative sign indicates that heat flows into the sphere")
q12=-q12;
m=q12*60/h_fg;
disp(m,"Rate of evaporation per minutes in kg/min")
