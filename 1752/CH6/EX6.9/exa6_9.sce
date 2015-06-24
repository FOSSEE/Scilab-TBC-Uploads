//Exa 6.9
clc;
clear;
close;
//given data
K=0.0278;// in W/mK
rho=1.092;// in kg/m^3
miu=19.57*10^-6;// in kg/ms
Cp=1007;// in kg/kg degree C
epsilon=0.9;
sigma=5.67*10^-8;
d=75+2*25;// in mm
d=d*10^-3;// in meter
T_s=80;// in degree C
T_infinite=20;// in degree C
T_f=(T_s+T_infinite)/2;// in degree C
T_f=T_f+273;// in K
Bita=1/T_f;
g=9.81;
del_T=T_s-T_infinite;
Pr=miu*Cp/K;
Gr=(rho^2*g*Bita*del_T*d^3)/miu^2;

// Formula Nu= h*d/K = 0.53*(Gr*Pr)^(1/4);
h= 0.53*(Gr*Pr)^(1/4)*K/d;

//(a) Heat loss from 6 m length of pipe
A=%pi*d*6;
Q_conv=h*A*del_T;
Q_rad=epsilon*sigma*A*((T_s+273)^4-(T_infinite+273)^4);
//total heat transfer rate
Q=Q_conv+Q_rad;
disp("Total heat transfer rate is : "+string(Q)+" W");

// (b) Overall heat transfer coefficient
// Formula Q=U*A*del_T
U=Q/(A*del_T);
disp("Overall heat transfer coefficient is : "+string(U)+" W/m^2 degree C");
