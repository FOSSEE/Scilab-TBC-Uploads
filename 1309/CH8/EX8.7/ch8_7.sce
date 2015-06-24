clc;
clear;
printf("\t\t\tChapter8_example7\n\n\n");
//  Determinion of the convection coefficient about the ice cube
// properties of air at (0 + 70)/2 = 35°F == 495 degree R from appendix table D1
rou= 0.0809; // density in lbm/cu.ft 
cp=0.240; // specific heat BTU/(lbm-degree Rankine) 
v= 13.54e-5; // viscosity in sq.ft/s 
kf = 0.01402 ; // thermal conductivity in BTU/(hr.ft.degree Rankine) 
a = 0.685; // diffusivity in sq.ft/hr 
Pr = 0.712; // Prandtl Number
Tw=0; // temperature of outside surface temperature of oven in degree F
T_inf=70; // ambient temperature  in degree F
g=32.2;
Beta=1/(T_inf+460); // volumetric thermal expansion coefficient in per degree Rankine
printf("\nThe volumetric thermal expansion coefficient is %.5f /degree R",Beta);
//  The characteristic length is found by using King Equation
Lc=1/((1/1)+(1/1.2));
printf("\nThe characteristic length is %.3f ft",Lc);
Ra=(g*Beta*abs(Tw-T_inf)*Lc^3)/(v*a/3600);
printf("\nThe Rayleigh Number is %.2e ",Ra);
hc=(kf/Lc)*0.6*(Ra)^(1/4);
printf("\nThe value of convection coefficient is %.2f BTU/(hr.sq.ft.degree R)",hc);
