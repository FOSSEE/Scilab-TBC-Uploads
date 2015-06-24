//Exa 5.7
clc;
clear;
close;
//given data
rho=977.3;// in kg/m^3
kf=0.665;// in W/mK
Cp= 4186;// in J/kg K
miu=4.01*10^-4;// in kg/m-s
Pr=2.524;
d=0.02;// in m
m=0.5;// in kg/s
t_o=70;// in degree C
t_i=20;// in degree C
t_s=100;// in degree C
Re= 4*m/(%pi*d*miu);

// Since Re > 2300, flow is turbulent flow. Then Nusselt Number
// Nu = h*d/k = 0.023*Re^0.8*Pr^0.4
h=0.023*Re^0.8*Pr^0.4*kf/d;// in W/m^2
disp(h,"Average heat transfer coefficient in W/m^2");
L=m*Cp*log((t_s-t_i)/(t_s-t_o))/(%pi*d*h);// in meter
disp(L,"Length of tube in meter");


// Note: Calculation of Re is wrong so the answer in the book is wrong
