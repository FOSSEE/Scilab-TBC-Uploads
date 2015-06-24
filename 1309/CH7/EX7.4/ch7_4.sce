clc;
clear;
printf("\t\t\tChapter7_example4\n\n\n");
//  Determination of the maximum heater-surface temperature for given conditions
// fluid properties at (300 degree R + 800 degree R)/2 = 550 degree R=540degree R from Appendix Table D.6
rou= 0.0812; // density in Ibm/ft^3 
cp=0.2918; // specific heat BTU/(lbm-degree Rankine) 
v= 17.07e-5; // viscosity in ft^2/s 
kf = 0.01546 ; // thermal conductivity in BTU/(hr.ft.degree Rankine) 
a = 0.8862; // diffusivity in ft^2/hr 
Pr = 0.709; // Prandtl Number
qw=10/(1.5*10.125)*(1/.2918)*144; // The wall flux 
printf("\nThe wall flux is %d BTU/(hr. sq.ft)",qw);
V_inf=20; // velocity in ft/s
L=1.5/12; // length in ft
Re_L=V_inf*10*L/v; // Reynolds number at plate end
printf("\nThe Reynolds number at plate end is %.2e",Re_L);
// So the flow is laminar and we can find the wall temperature at plate end as follows
T_inf=300; // free stream temperature in degree Rankine
Tw=T_inf+(qw*L*10/(kf*0.453*(Re_L)^0.5*(Pr)^(1/3)));
printf("\nThe maximum heater surface temperature is %d degree Rankine",Tw);
