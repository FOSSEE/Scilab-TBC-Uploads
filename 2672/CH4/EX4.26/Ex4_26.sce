//Example 4_26
clc;
clear;
close;
format('e',9);
//given data : 
T=300;//K
e=1.6*10^-19;//C/electron
disp("Part(a) :");
sigma=100;//(ohm-cm)^-1
ni=2.5*10^13;//cm^-3//For Ge
mu_p=1800;//cm^2/V-s//For Ge
//sigma=p0*e*mu_p, since p0>>n0
p0=sigma/e/mu_p;//cm^-3
n0=ni^2/p0*10^6;//m^-3
disp(p0,"Concentration of holes(cm^-3)");
disp(n0,"Concentration of electrones(m^-3)");
disp("Part(b) :");
sigma=0.1;//(ohm-cm)^-1
ni=1.5*10^10;//cm^-3//For Si
mu_n=1300;//cm^2/V-s//For Si
//sigma=n0*e*mu_p, since n0>>p0
n0=sigma/e/mu_n;//cm^-3
p0=ni^2/n0*10^6;//m^-3
disp(n0,"Concentration of electrones(cm^-3)");
disp(p0,"Concentration of holes(m^-3)");
