//calculating flux, area of pole shoe and no-load terminal voltage
//Chapter 2
//Example 2.15
//page 102
clear;
clc;
disp("Example 2.15")
V=550;            //voltage supply in volts
P=16;            //number of poles
N=150;             //speed in rpm
Z=2500;            //number of armature conductors
A=16;              
Power=1500000;        //power in watt
Cl=25000;              //full-load copper loss
B=0.9;                //flux density in the pole
Ia=Power/V
printf("Full load current=%fA",Ia)
Ra=Cl/(Ia^2)
printf("\nRa=%fohms",Ra)
E=V+(Ia*Ra)
printf("\nInduced emf=%fvolts",E)
phi=(E*60*A)/(Z*N*P)
printf("\nflux density=%fWb/m^2",B)
printf("\nflux=%fWb",phi)
area=(phi/B)
printf("\n Area of pole shoe=%fcm^2",(area*10000))