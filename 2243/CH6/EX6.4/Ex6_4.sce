clc();
clear;
//Given :
nu1 = 10*10^14;// Frequency in Hz
nu2 = 6*10^14;// Frequency in Hz
V_01 = 2.37; //Stopping potential in volts
V_02 = 0.72; //Stopping potential in volts
//Einstein's photoeletric equation : h*nu = phi + e*V_0  
e = 1.6*10^-19 ;// Charge of an electron in C
h = (e*(V_02 - V_01))/(nu2 - nu1);//Planck's constant in Js
phi = ((h*nu1)-(e*V_01))/e ; // work function in eV
printf("Plancks constant h is %.1f x 10^-34 Js  and Work function phi is %.2f eV ",h*10^34,phi);
