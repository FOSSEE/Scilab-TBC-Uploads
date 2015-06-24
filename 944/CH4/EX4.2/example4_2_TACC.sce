//example 4.2

clear;
clc;

//Given:
Vl=0.0177;//specific volume of saturated liquid[m3/Kg]
Vg=4.43;//specific volume of saturated vapour[m3/Kg]
P=7;//pressure[atm]
T=438;//temperature[K]
x=0.6;//fraction of vapour phase
M=2.5;//mass of the substance[Kg]

//to find the total volume occupied by  the mixture 
V=[(1-x)*Vl+x*Vg]*M;//total volume occupied [m3]
printf("Total volume occupied =%f m3", V)
