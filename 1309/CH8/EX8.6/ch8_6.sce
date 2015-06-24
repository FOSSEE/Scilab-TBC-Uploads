clc;
clear;
printf("\t\t\tChapter8_example6\n\n\n");
// determination of heat lost from the insulation by convection
// properties of air at (50 + 5)/2 = 27.5 degree C = 300 K from appendix table D1
rou= 1.177; // density in kg/cu.m
cp= 1005.7; // specific heat in J/(kg*K) 
v= 15.68e-6; // viscosity in sq.m/s  
Pr =0.708; // Prandtl Number 
kf= 0.02624; // thermal conductivity in W/(m.K)
a = 0.22160e-4; // diffusivity in sq.m/s 
g=9.81;
L=4; // length in m
D=15/100; // diameter in m
T_inf=5; // ambient air temperature in degree C
Tw=50; // outside surface temperature in degree C
Beta=1/(T_inf+273); // volumetric thermal expansion coefficient in per K
printf("\nThe volumetric thermal expansion coefficient is %.5f /K",Beta);
Ra=(g*Beta*(Tw-T_inf)*D^3)/(v*a);
printf("\nThe Rayleigh Number is %.2e ",Ra);
// for horizontal pipe, the convective coefficient is determined as follows
hc_h=(kf/D)*(0.60+(0.387*Ra^(1/6))/(1+(0.559/Pr)^(9/16))^(8/27))^2;
printf("\nThe convection coefficient for horizontal length is %.2f W/(sq.m.K)",hc_h);
As=%pi*D*L;
q_hor=hc_h*As*(Tw-T_inf);
printf("\nThe heat transferred from the horizontal length of 4 m is %d W",q_hor);
// for vertical pipe, the convective coefficient is determined as follows
hc_v=(kf/D)*0.6*(Ra*(D/L))^(1/4);
printf("\nThe convection coefficient for vertical length is %.2f W/(sq.m.K)",hc_v);
q_ver=hc_v*As*(Tw-T_inf);
printf("\nThe heat transferred from the vertical length of 4 m is %d W",q_ver);
q=q_ver+q_hor;
printf("\nThe total heat lost from the pipe is %d W",q);
