clc;
clear;
printf("\t\t\tChapter8_example3\n\n\n");
// determination of heat loss through the side.
rou= 0.0735; // density in Ibm/cu.ft 
cp=0.240; // specific heat BTU/(lbm-degree Rankine) 
v= 16.88e-5; // viscosity in sq.ft/s 
kf = 0.01516 ; // thermal conductivity in BTU/(hr.ft.degree Rankine) 
a = 0.859; // diffusivity in sq.ft/hr 
Pr = 0.708; // Prandtl Number
Tw=90;
T_inf=70;
g=32.2;
L=5.5; // length in ft
W=2+(4/12); // width in ft
Beta=1/(Tw+460); // volumetric thermal expansion coefficient in per degree Rankine
printf("\nThe volumetric thermal expansion coefficient is %.5f /degree R",Beta);
Ra=(g*Beta*(Tw-T_inf)*L^3)/(v*a/3600);
printf("\nThe Rayleigh Number is %.2e ",Ra);
hc=(kf/L)*(0.825+((0.387*(Ra)^(1/6))/(1+(0.492/Pr)^(9/16))^(8/27)))^2;
printf("\nThe value of convection coefficient is %.3f BTU/(hr.sq.ft.degree R)",hc);
q=hc*L*W*(Tw-T_inf);
printf("\nThe heat gained is %d BTU/hr",q);
