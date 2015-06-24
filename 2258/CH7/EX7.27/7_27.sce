clc();
clear;
// To calculate the concentration
sigma_e=2.2*10^-4;   //conductivity
mew_e=125*10^-3;    //mobility of electrons in m^2/Vs
e=1.602*10^-19;
ne=sigma_e/(e*mew_e);
printf("concentration in m^3 is");
disp(ne);
