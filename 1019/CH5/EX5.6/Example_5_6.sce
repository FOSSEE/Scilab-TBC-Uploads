//Example 5.6
clear;
clc;

//Given
n=1;//moles of toluene
P=1;//pressure in atm
R=8.314;//gas constant in J K^-1 mol^-1
T=384//temperature in K
delHv=363.3;//latent heat of vapourization in J g^-1

//To determine q,delH,delG,delE and delS
w=R*T;// work done in J
qp=delHv*(n*92);
delE=qp-w;//internal energy change in J
delH=qp;//enthalpy change in J
delG=0;//gibbs free energy in J
delS=delH/T;//entropy change in J K^-1
mprintf('(i) delE = %f J mol^-1 ',delE);
mprintf('\n (ii) q = %f J mol^-1',qp);
mprintf('\n (iii) delH = %f J mol^-1',delH);
mprintf('\n (iv) delG = %f J mol^-1',delG);
mprintf('\n (v) delS of system = %f J K^-1 mol^-1',delS);
//end