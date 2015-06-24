clc;
//Example 26.6
//page no 392 
printf("Example 26.6 page no 392\n\n");
//a bed of pulverized is to be fluidized with liquid oil
D=4//diameter of bed ,ft
d_p=0.00137//particle diameter ,ft 
rho_s=84//coal particle density ,lb/ft^3
rho_f=55//oil density,lb/ft^3
e_mf=0.38//void fraction
L_mf=8//bed height at minimum fluidization,ft
P_drop=(rho_s-rho_f)*(1-e_mf)*L_mf +rho_f*L_mf 
printf("\npressure drop P_drop=%f psf",P_drop);
