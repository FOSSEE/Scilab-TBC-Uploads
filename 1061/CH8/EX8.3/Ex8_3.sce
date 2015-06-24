//Ex:8.3
clc;
clear;
close;
nx=3.6;// refractive index
Fn=0.68;// transmission factor
pe_pi=(Fn)/(4*nx^2);
pi_p=0.3;
nep=pe_pi*pi_p;// external power efficiency
printf("The external power efficiency =%f %%", nep*100);