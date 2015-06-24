//Rate of Oxidation Computation

clear;
clc;

printf("\tExample 17.2a\n");

//Activation polarisation data
VH_H2=0;
VZn_Zn2=-0.763;
iZn=10^-7;
iH2=10^-10;
beta_Zn=0.09;
beta_H2=-0.08;

//Part i
ic=10^[(VH_H2-VZn_Zn2-(beta_H2*log10(iH2))+(beta_Zn*log10(iZn)))/(beta_Zn-beta_H2)];

disp(ic,'ic is ');

n=2;              //Exchange of 2 electrons
F=96500;          //Faradays constant

r=ic/(n*F);
printf("\ni) Rate of oxiadation is %.1f * 10^-10 mol/cm^2-s\n",r/10^-10);


//End