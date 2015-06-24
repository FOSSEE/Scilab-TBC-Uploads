//Example 5_2
clc;
clear;
close;
format('e',9);
//given data : 
ND=10^16;//cm^-3
A=4*10^-4;//cm^2
NA=5*10^18;//cm^-3
T=300;//K
epsilon0=8.85*10^-14;//vaccum permittivity
epsilonr=11.8;//relative permittivity
e=1.6*10^-19;//C/electron
ni=1.5*10^10;//cm^-3
kBT=0.0259;//eV//at room temperture
V0=kBT*log(NA*ND/ni^2);//V
W=sqrt(2*epsilonr*epsilon0*V0/e*(1/NA+1/ND));//cm
disp(W,"Width of depletion zone(cm)");
///Answer in the texbook is not accurate.Calculation mistake in W.
