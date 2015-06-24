//Determine resistivity of dielectric in a cable
clear;
clc;
//soltion
//given
Rins=1840*10^6;//ohm
l=2*10^3;//m
r1=2/2;//mm
r2=6/2;//mm
row=Rins*(2*%pi*l)/log(r2/r1);
printf("Resistivity of Dielectric= %.3f*10^12 ohm-m",row/10^12);
