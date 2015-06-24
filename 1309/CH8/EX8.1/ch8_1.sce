clc;
clear;
printf("\t\t\tChapter8_example1\n\n\n");
// Determination of the heat transferred to the wall.
// air properties at (400+120)/2 =260 degree F = 720 degree R from Appendix Table D1
rou= 0.0551; // density in Ibm/cu.ft 
cp=0.2420; // specific heat BTU/(lbm-degree Rankine) 
v= 27.88e-5; // viscosity in sq.ft/s 
kf = 0.01944 ; // thermal conductivity in BTU/(hr.ft.degree Rankine) 
a = 1.457; // diffusivity in sq.ft/hr 
Pr = 0.689; // Prandtl Number
T_inf=120+460; // wall temperature in degree R
Tw=400+460; // inside wall temperature in degree R
Beta=1/T_inf;
printf("\nThe volumetric thermal expansion coefficient is %.5f/degree R",Beta);
gc=32.2;
L=1; // length of wall in ft
W=2; // width in ft
Gr=(gc*Beta*(Tw-T_inf)*L^3)/v^2;// Grashof Number
printf("\nThe Grashof number is %.2e",Gr);
temperature_slope=0.505; //value of temperature slope from table 8.1 corresponding to Pr=.72
hL=(kf/L)*(4/3)*(Gr/4)^(1/4)*temperature_slope; // The convection coefficient in BTU/(hr.ft^2.degree R)
printf("\nThe convection coefficient is %.2f BTU/(hr.sq.ft.degree R)",hL);
A=L*W; // cross sectional area in sq.ft
qw=hL*A*(Tw-T_inf);
printf("\nThe heat transferred is %d BTU/hr",qw);
