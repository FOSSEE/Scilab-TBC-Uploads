clc;
clear;
printf("\t\t\tChapter10_example3\n\n\n");
// Calculation of (a) the power input to the water for boiling to occur, (b) the evaporation rate of water, and (c) the critical heat flux.
// properties of water at 100°C = 373 K from appendix table 10.3
rou_f=958; // density in kg/m^3
cp_f= 4217; // specific heat in J/(kg*K) 
v_f= 2.91e-7; // viscosity in m^2/s  
Pr_f =1.76; // Prandtl Number 
rou_g=0.596; 
sigma=0.0589; // surface tension in N/m
hfg=2257000; 
Tw=120
Tg=100;
D=.141; // diameter of pan in m
g=9.81;
gc=1;
// nucleate boiling regime
Cw=0.0132; // formechanically polished stainless steel from table 10.2
q_A=(rou_f*v_f*hfg)*[(g*rou_f*(1-(rou_g/rou_f)))/(sigma*gc)]^(1/2)*[(cp_f*(Tw-Tg))/(Cw*hfg*Pr_f^1.7)]^3;
printf("\nThe heat transferred per unit area is %.2e W/sq.m",q_A);
A=%pi*D^2/4;
printf("\nThe area of the pan inside-bottom surface in contact with liquid is %.2e sq.m",A);
printf("\n\n\t\t\tSolution to part (a)");
q=q_A*A; // power delivered to the water in W
printf("\nThe power delivered to the water is %.2f kW",q/1000);
printf("\n\n\t\t\tSolution to part (b)");
mf=q/hfg; // water evaporation rate
printf("\nThe water evaporation rate is %.2e kg/s = %.2f kg/hr",mf,mf*3600);
printf("\n\n\t\t\tSolution to part (c)");
q_cr=0.18*hfg*[sigma*g*gc*rou_f*rou_g^2]^(1/4);
printf("\nThe critical heat flux is %.2e W/sq.m",q_cr);
