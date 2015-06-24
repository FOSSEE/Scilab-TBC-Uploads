clc;clear;
//Example 7.3

//given data
d1=2.5*10^19;//density of charge carries in 1/m^3
d2=4.2*10^28;//density of germanium atoms
ue=0.36;//mobilty of electrons in m^2/V-s
Na=6.02*10^23;//Avgraodo no. in 1/g mole
e=1.6*10^-19;//the charge on electron in C

//calcualtions
Nd=d2/10^6;
cn=Nd*e*ue;
pn=1/cn;
disp(pn,'resistivity of doped germanium in ohm-m')