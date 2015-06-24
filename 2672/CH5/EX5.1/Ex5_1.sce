//Example 5_1
clc;
clear;
close;
format('v',6);
//given data : 
rho_p=1.5;//ohm-cm
rho_n=1;//ohm-cm
e=1.6*10^-19;//C/electron
//For Ge diode
mu_p=1800;//cm^2/V-s//For Ge
mu_n=3800;//cm^2/V-s//For Si
VT=0.026;///eV//at room temperature
ni=2.5*10^13;//cm^-3s
//rho=1/(NA*e*mu)
NA=1/(rho_p*e*mu_p);//cm^-3
ND=1/(rho_n*e*mu_n);//cm^-3
V0=VT*log(NA*ND/ni^2);//eV
disp(V0,"(a) Height of potential barrier(eV)");
//For Si diode
mu_p=500;//cm^2/V-s//For Ge
mu_n=1300;//cm^2/V-s//For Si
VT=0.026;///eV//at room temperature
ni=1.5*10^10;//cm^-3s
//rho=1/(NA*e*mu)
NA=1/(rho_p*e*mu_p);//cm^-3
ND=1/(rho_n*e*mu_n);//cm^-3
V0=VT*log(NA*ND/ni^2);//eV
disp(V0,"(b) Height of potential barrier(eV)");
///Answer in the texbook is not accurate.
