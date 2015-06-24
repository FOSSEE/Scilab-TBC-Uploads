//example 4.1

clear;
clc;

//Given:
M=2.5;//mass of the substance[Kg]
x=0.6;//mass fraction for vapour phase 
P=7;//pressure [atm]
T=438;//temperature[K]

//to find the mass of substance present in liquid and vapour phase 
Ml=(1-x)*M;//mass fraction of liquid phase[Kg]
Mg=x*M;//mass fraction of vapour phase[Kg]

printf("M(liquid phase)=%f Kg , M(vapour phase)=%f Kg",Ml,Mg)