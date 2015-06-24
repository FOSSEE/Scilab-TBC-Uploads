//Exa 5.4
clc;
clear;
close;
//given data
rho=985;// in kg/m^3
k=.654;// in W/mK
Cp=4.18;// in kgJ/kgK
Cp=Cp*10^3;// in J/kgK
v= 0.517*10^-6;// in m^2/s
Pr=3.26;
V=1.2;// in m/s
t_s=85;// in degree C
t_i=40;// in degree C
t_o=70;// in degree C
Ax=15*35;// in mm
P=15+35;
de=4*Ax/(2*P);// in mm
de=de*10^-3;// in m
Re=V*de/v;
// Formula Nu= h*de/k = 0.023Re^0.8*Pr^0.4
h=0.023*Re^0.8*Pr^0.4*k/de;// in W/m^2K
m=%pi*de^2*V*rho/4;
d=de;
L=m*Cp*log((t_s-t_i)/(t_s-t_o))/(%pi*d*h);
disp(L,"The length of tube in meter")
