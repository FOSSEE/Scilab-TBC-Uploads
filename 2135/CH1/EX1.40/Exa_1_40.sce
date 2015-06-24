//Exa 1.40
clc;
clear;
close;
format('v',7);

//Given Data :
mCO=0.45;//Kg
mAir=1;//Kg
V=0.4;//m^3
T=15+273;//K
MCO=28;//Kg/Kgmo
MO2=32;//Kg/Kgmol
MN2=28;//Kg/Kgmol
mO2=23.3/100*mAir;//Kg
mN2=76.7/100*mAir;//Kg
Rdash=8314.3;//J/Kgk
//p*V=m*Z*R*T
pCO=mCO*Rdash/MCO*T/V/10^5;//bar
pO2=mO2*Rdash/MO2*T/V/10^5;//bar
pN2=mN2*Rdash/MN2*T/V/10^5;//bar
disp(pCO,"Pressure of CO in bar : ");
disp(pO2,"Pressure of O2 in bar : ");
disp(pN2,"Pressure of N2 in bar : ");
p=pCO+pO2+pN2;//bar
disp(p,"Total pressure in vessel in bar : ");
