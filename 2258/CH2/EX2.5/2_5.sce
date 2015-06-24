clc();
clear;
// To calculate the density and mobility of electrons in silver
rho_s=10.5*10^3;   //density in kg/m^3
NA=6.02*10^26;    //avagadro number per kmol
MA=107.9;    
n=(rho_s*NA)/MA;
sigma=6.8*10^7;
e=1.6*10^-19;   //charge in coulomb
mew=sigma/(n*e);
printf("density of electrons is");
disp(n);
printf("mobility of electrons in silver is %f m^2/Vs",mew);
