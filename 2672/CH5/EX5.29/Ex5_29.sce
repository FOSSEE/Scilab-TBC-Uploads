//Example 5_29
clc;
clear;
close;
format('v',5);
//given data : 
//for Ge diode
rho_p=2;//ohm-cm(p-side resistivity)
rho_n=1;//ohm-cm(n-side resistivity)
e=1.6*10^-19;//C/electron
mu_p=1800;//m^2/V-s
mu_n=3800;//m^2/V-s
VT=0.026;//V(Thermal Voltage)
ni=2.5*10^13;//per cm^3(intrinsic concentration)
NA=1/(rho_p*e*mu_p);//per cm^3
ND=1/(rho_n*e*mu_n);//per cm^3
V0=VT*log(ND*NA/ni^2);//eV
disp(V0,"(a) Height of potential barrier(eV) : ");
//for Si diode
format('v',6);
mu_p=500;//m^2/V-s
mu_n=1300;//m^2/V-s
ni=1.5*10^10;//per cm^3(intrinsic concentration)
NA=1/(rho_p*e*mu_p);//per cm^3
ND=1/(rho_n*e*mu_n);//per cm^3
V0=VT*log(ND*NA/ni^2);//eV
disp(V0,"(b) Height of potential barrier(eV) : ");
