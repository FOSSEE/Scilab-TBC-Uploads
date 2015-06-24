//Example 4_28
clc;
clear;
close;
format('v',8);
//data for intrinsic Ge
//n0=p0=ni;///for intrinsic
ni=2.5*10^13;//cm^-3
mu_n=3800;//cm^2/V-s
mu_p=1800;//cm^2/V-s
mu=mu_n+mu_p;//cm^2/V-s
e=1.6*10^-19;//C/electron
sigma=e*ni*(mu);//(s/cm)
disp(sigma,"(a) Conductivity of intrinsic Ge(s/cm) : ");
format('v',5);
n=4.41*10^22;//cm^-3//Concentration of Ge atom
ND=n/10^7;//cm^-3
n0=ND;//cm^-3
p0=ni^2/ND;//cm^-3
sigma=n0*e*mu_n;//s/cm(n0<<p0, n0 neglected)
disp(sigma,"(b) Conductivity(s/cm)");
NA=n/10^7;//cm^-3
p0=NA;//cm^-3
n0=ni^2/NA;//cm^-3
sigma=p0*e*mu_p;//s/cm(p0<<n0, p0 neglected)
disp(sigma,"(c) Conductivity(s/cm)");


