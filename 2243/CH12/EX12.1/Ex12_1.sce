clc();
clear;
//Given:
sigma_n = 10^4; //conductivity in mho/m
sigma_p = 10^2; // conductivity in mho/m
e = 1.6*10^-19;// charge of an electron in C
kT = 0.026 ;// k*T value at room temperature in eV
ni = 2.5*10^19; // per m^3
mue = 0.38; // mobility of free electrons in m^2/Vs
muh = 0.18;// mobility of free electrons in m^2/Vs
// sigma_n = e*n*mue  and sigma_p = e*p*muh
nn0 = sigma_n/(e*mue); // per m^3
pp0 = sigma_p/(e*muh);// per m^3
np0 =( ni^2)/pp0; // in m^-3
// V0 = (kT/e)*log(nn0/np0) , but we consider only kT because kT/e = 0.026 eV/e  , both the e's cancel each other.Finally we obtain the answer in Volts
V0 = (kT)*log(nn0/np0); // in V
printf("V0 = %.2f V",V0);
