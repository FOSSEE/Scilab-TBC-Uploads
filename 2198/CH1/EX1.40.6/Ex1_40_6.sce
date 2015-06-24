//Ex 1.40.6
clc;clear;close;
format('v',9);

//Given : 
sigma_n=0.1;//(ohm-cm)^-1
mu_n=1300;//m^2/V-s
ni=1.5*10^10;//per cm^3
q=1.6*10^-19;//Coulomb
n_n=sigma_n/q/mu_n;//per cm^3
p_n=ni^2/n_n;//per cm^3
p_n=p_n*10^6;//per m^3
disp(p_n,"Concentration of holes(per m^3) : ");
