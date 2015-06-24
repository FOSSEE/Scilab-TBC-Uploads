//Ex 1.11.4
clc;clear;close;
format('v',9);

//Given : 
rho=3*10^5*10^-2;//ohm-m
T1=30+273;//K
mu_n=0.13;//m^2/V-s
mu_p=0.05;//m^2/V-s
q=1.6*10^-19;//Coulomb
T2=100+273;//K
sigma_i=1/rho;//(ohm-m)^-1
ni1=sigma_i/q/(mu_n+mu_p);//electrons/m^3
disp(ni1,"Intrinsic concentration at 30 degree C(per m^3) : ");
k=8.62*10^-5;//eV/K(Boltzman constant)
EGO=1.21;//V(Energy band gap)
Ao=ni1^2/(T1^3*exp(-EGO/k/T1));//constant
ni2=sqrt(Ao*T2^3*exp(-EGO/k/T2));//per cm^3
disp(ni2,"Intrinsic concentration at 100 degree C(per m^3) : ");
