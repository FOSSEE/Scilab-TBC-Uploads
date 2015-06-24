clc;
clear;
printf("\t\t\tChapter10_example2\n\n\n");
// Determination of both the heat that the cooling fluid must remove and the condensation rate. 
// properties of water at (100 + 60)/2 = 80°C from appendix table C11
rou_f= 947; // density in kg/m^3 
cp_1= 4196; // specific heat in J/(kg*K) 
v_1= 0.364e-6; // viscosity in m^2/s  
Pr_1 =2.22; // Prandtl Number 
kf= 0.668; // thermal conductivity in W/(m.K)
a_1 =1.636e-7; // diffusivity in m^2/s 
Vv=1.9364; // specific volume in m^3/kg
rou_v=1/Vv; // vapor density;
g=9.81;
hfg=2257.06*1000; 
Tg=100;
Tw=60;
L=1;
printf("\nThe vapor density is %.3f kg/cu.m",rou_v);
// specifications of 1 nominal schedule 40 pipe from appendix F1
OD=.03340;
hD=0.782*[(g*rou_f*(1-(rou_v/rou_f))*(kf^3)*hfg)/(v_1*OD*(Tg-Tw))]^(1/4);
printf("\nThe average heat transfer coefficient is %.3e W/(sq.m.K)",hD);
q=hD*%pi*OD*L*(Tg-Tw);
printf("\nThe heat flow rate is %.1e W",q);
mf=q/hfg;
printf("\nThe rate at which steam condenses is %.2f kg/s = %d kg/hr",mf,.02*3600);
