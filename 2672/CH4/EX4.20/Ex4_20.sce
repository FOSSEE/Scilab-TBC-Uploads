//Example 4_20
clc;
clear;
close;
format('e',9);
//given data : 
ni=1.5*10^10;//cm^-3
mu_n=1350;//cm^2/V-s
mu_p=450;//cm^2/V-s
n0=ni*sqrt(mu_p/mu_n);//cm^-3
p0=ni*sqrt(mu_n/mu_p);//cm^-3
disp(n0,"Electron concentration(cm^-3)")
disp(p0,"Hole concentration(cm^-3)")
