clc();
clear;
//To determine the charge to mass ratio for proton
v=20;                            //cyclotron frequency in MHz
B=1.3;                           //magnetic field in T
//d=q/m=(2*pi*v)/B
d=(2*%pi*v*10^6)/B               //charge to mass ratio of proton
printf("q/m=%f C/kg",d);