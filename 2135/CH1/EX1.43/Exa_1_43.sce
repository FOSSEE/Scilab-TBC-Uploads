//Exa 1.43
clc;
clear;
close;
format('v',7);

//Given Data :
yO2=0.3;
yN2=0.5;
yCO2=0.2;
V=1;//m^3
T=27+273;//K
m=8;//Kg
MO2=32;
MN2=28;
MCO2=44;
M=1/(yO2/MO2+yN2/MN2+yCO2/MCO2);//Kg/Kgmol
disp(M,"Molecular mass for mixture in Kg/Kgmol : ");
Rdash=8314.3;//J/Kgk
R=Rdash/M;//Nm/KgK
disp(R,"Gas constant R of mixture in Nm/KgK : ");
p=m*R*T/V/10^5;//bar
disp(p,"Pressure exerted by gases in bar : ");
nO2=yO2/MO2*m;//moles
nCO2=yCO2/MCO2*m;//moles
nN2=yN2/MN2*m;//moles
disp(nO2,"Mole fraction of O2(moles) : ");
disp(nN2,"Mole fraction of N2(moles) : ");
disp(nCO2,"Mole fraction of CO2(moles) : ");
