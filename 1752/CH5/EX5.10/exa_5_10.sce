//Exa 5.10
clc;
clear;
close;
//given data
d=0.058;// in m
t_infinite=30;// in degree C
t_s=155;// in degree C
V=52;// in m/s
T_f=(t_s+t_infinite)/2;// in degree C
T_f=T_f+273;// in K
// Fluid properties at 92.5 degree C and 1 atm
miu= 2.145*10^-5;// in kg/ms
Pr=0.696;
P=1.0132*10^5;
R=287;
k=0.0312;// in W/mK
rho=P/(R*T_f);// in kg/m^3
Re=rho*V*d/miu;
C=0.0266;
n=0.805;
// Nu = h*d/k = C*(Re)^n*Pr^(1/3)
h=C*(Re)^n*Pr^(1/3)*k/d;// in W/m^2K
//So, heat transfer rate per unit length from cylinder
q_by_L= h*(%pi*d)*(t_s-t_infinite);// in W/m
disp(q_by_L,"Heat transfer rate per unit length from cylinder in W/m");


// Note: Calculation of q_by_L in the book is wrong , so the answer in the book is wrong
