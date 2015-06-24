//Exa 6.4
clc;
clear;
close;
//given data :
format('v',7);
L=20;//in um
L=L*10^-6;//in meter
Tr=80;//in ns
Tnr=80;//in ns
tau=Tr*Tnr/(Tr+Tnr);//in ns
//Formula : L=(D*tau)^(1/2)
D=(L^2)/(tau*10^-9);//in m^2-s^-1
disp(D,"Diffusion Coefficient of LED in m^2-s^-1 : ");