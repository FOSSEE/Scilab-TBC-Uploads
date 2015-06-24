//Exa 1.42
clc;
clear;
close;
format('v',8);

//Given Data :
Rdash=8314.3;//J/Kgk
mO2=23.15/100;
mN2=75.52/100;
mArgon=1.29/100;
mCO2=0.04/100;
MO2=32;
MN2=28;
MArgon=40;
MCO2=44;
RO2=Rdash/MO2;//J/KgK
RN2=Rdash/MN2;//J/KgK
RArgon=Rdash/MArgon;//J/KgK
RCO2=Rdash/MCO2;//J/KgK
R=(mO2*RO2+mN2*RN2+RArgon*mArgon+RCO2*mCO2)/(mO2+mN2+mArgon+mCO2);//J/KgK
disp(R,"Characteristic gas constant for air in J/KgK : ");
M=Rdash/R;//Kg/Kgmol
disp(M,"Molecular weight of air in Kg/Kgmol : ");
p=1.013;//bar
nO2=mO2/MO2;//moles
nCO2=mCO2/MCO2;//moles
nN2=mN2/MN2;//moles
nArgon=mArgon/MArgon;//moles
n=nO2+nN2+nArgon+nCO2;
pO2=nO2/n*p;//bar
pN2=nN2/n*p;//bar
pArgon=nArgon/n*p;//bar
pCO2=nCO2/n*p;//bar
disp(pO2,"Pressure of O2 in bar : ");
disp(pN2,"Pressure of N2 in bar : ");
disp(pArgon,"Pressure of Argon in bar : ");
disp(pCO2,"Pressure of CO2 in bar : ");



