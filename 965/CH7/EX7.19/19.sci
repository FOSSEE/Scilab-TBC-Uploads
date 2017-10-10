clc;
clear all;
disp("skin friction coefficient")
Ta=30;// degree C
U=1.8;//m/s
L=0.75;//m
rho=1.165;// kg/m^3
v=16*10^(-6);//m^2/s
mu=6.717*10^(-6);//kg/hm
Re=U*L/v;
Cf=1.328/Re^0.5;
disp(Cf,"Average skin friction Cf =")
tau=0.5*rho*U^2*Cf;
disp("N/m^2",tau,"Average shear stress Tau =")

Cfx=0.664/Re^0.5;
disp(Cfx," skin friction coefficient at the trailing edge, Cf =")
taux=0.5*rho*U^2*Cfx;
R=tau/taux;

disp(R,"Ratio of average shear stress to the shear stress at the trailing edge R =")

