clc;
clear;
printf("\t\t\tChapter8_example5\n\n\n");
// determine if heat is lost lose more heat through its upper surface or one of its vertical sides
// properties of air at (100 + 60)/2 = 80°F = 540 degree R from appendix table D1
rou= 0.0735; // density in lbm/cu.ft
cp=0.240; // specific heat BTU/(lbm-degree Rankine) 
v= 16.88e-5; // viscosity in sq.ft/s 
kf = 0.01516 ; // thermal conductivity in BTU/(hr.ft.degree Rankine) 
a = 0.859; // diffusivity in sq.ft/hr 
Pr = 0.708; // Prandtl Number
Tw=100; // temperature of outside surface temperature of oven in degree F
T_inf=60; // ambient temperature  in degree F
g=32.2;
L=2; // length in ft
W=2; // width in ft
Beta=1/(T_inf+460); // volumetric thermal expansion coefficient in per degree Rankine
printf("\nThe volumetric thermal expansion coefficient is %.5f /degree R",Beta);
Ra=(g*Beta*(Tw-T_inf)*L^3)/(v*a/3600);
printf("\nThe Rayleigh Number is %.2e ",Ra);
hc=(kf/L)*(0.68+(0.670*Ra^(1/4))/(1+(0.492/Pr)^(9/16))^(4/9));
printf("\nThe value of convection coefficient is %.3f BTU/(hr.sq.ft.degree R)",hc);
q1side=hc*L*W*(Tw-T_inf);
printf("\nThe heat transferred from one side is %.1f BTU/hr",q1side);
// For the top, we have a heated  surface facing upward, The characteristic length is determined as follows
Lc=(2*2)/(2+2+2+2);
Ra_L=(g*Beta*(Tw-T_inf)*Lc^3)/(v*a/3600); // Rayleigh number based on characteristic length
printf("\nThe Rayleigh Number based on characteristic length is %.2e ",Ra_L);
hc_L=(kf/Lc)*0.54*(Ra_L)^(1/4);
printf("\nThe convective coefficient based on characteristic length is %.3f BTU/(hr.sq.ft.degree R)",hc_L);
qtop=hc_L*L*W*(Tw-T_inf);
printf("\nThe heat transferred from top is %d BTU/hr",qtop);
if qtop>q1side then
    printf("\nThe top transfers heat at a higher rate");
elseif qtop<q1side
    printf("\nThe side transfers heat at a higher rate");
    else printf("\nThe top and side transfer heat at equal rates");
end
