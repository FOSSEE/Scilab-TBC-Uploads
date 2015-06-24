//Example 4_27
clc;
clear;
close;
format('v',5);
//data for intrinsic Ge
//n0=p0=ni;///for intrinsic
ni=2.5*10^13;//cm^-3
mu_n=3800;//cm^2/V-s
mu_p=1800;//cm^2/V-s
mu=mu_n+mu_p;//cm^2/V-s
e=1.6*10^-19;//C/electron
sigma=e*ni*(mu);//(s/cm)
rho=1/sigma;//ohm-cm
disp(rho,"Resistivity of intrinsic Ge(ohm-cm) : ");
