//Ex 1.16.4
clc;clear;close;
format('v',9);

//Given : 
ni=1.5*10^10;//per cm^3
mu_n=1400;//cm^2/V-s
mu_p=500;//cm^2/V-s
l=1;//cm
a=1;//mm^2
q=1.6*10^-19;//Coulomb
del_n=10^14;//per cm^3
del_p=10^14;//per cm^3
Nd=8*10^15;//per cm^3
n=Nd;//per cm^3(Nd>>ni)
disp(n,"Electron concentration, n(per cm^3) : ");
p=ni^2/n;//per m^3
disp(p,"Hole concentration, p(per cm^3) : ");
nT=Nd+del_n;//per cm^3
disp(nT,"Total electron concentration, nT(per cm^3) : ");
pT=p+del_p;//per cm^3
disp(pT,"Total hole concentration, pT(per cm^3) : ");
sigma=(nT*mu_n+pT*mu_p)*q;//(ohm-cm)^-1
rho=1/sigma;//ohm-cm
R=rho*l/(a*10^-2);//ohm
V=2;//volt
I=V/R;//A
disp(I*1000,"Current, I(mA) : ");
