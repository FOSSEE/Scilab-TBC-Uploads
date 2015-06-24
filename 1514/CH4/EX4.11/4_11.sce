//chapter 4
//example 4.11
//page 125
clear all;
clc ;
//given
R4=4.7;//kohm
hfe=70;
deltaT=100-25;//change in temperature
//deltaVbe/deltaT=-1.8mV/degreeC
deltaVbe=-1.8*deltaT;
deltaIc=-deltaVbe/R4;//microA
printf("\nchange in Ic =%.1f microA",deltaIc);

Re=R4;
Rt=(56*68/(56+68));
//stability factor
S=(1+hfe)/(1+hfe*(Re/(Re+Rt)));
printf("\nstability factor=%.1f",S);





