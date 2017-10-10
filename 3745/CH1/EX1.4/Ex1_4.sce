// Ex 4 Page 343

clc;clear;close;
// Given

D=15/100 ;// m
A=10/10**-4;//m^2
N=200; // turns
fi=1.6*10^3 ;// Wb
B=1 ;//weber/m^2
mu0=4*%pi/10^7 ;// constant
mur=500 ;// constant
lg=2/1000;//m


// without air gap
l=%pi*D;//m
R=l/mu0/mur/A;//A/Wb
fi=B*A;//Wb
mmf=fi*R;//AT
I=mmf/N;//A
L=N**2/R/10**6;//mH
E=1/2*L*I^2/100;//J


// with air gap
Rg=lg/mu0/A;//A/Wb
Rt=R+Rg;//A/Wb
fi=B*A;//Wb
mmf=fi*Rt;//AT
I2=mmf/N;//A
L2=N**2/Rt/10**6;//mH
E2=1/2*L2*I2^2/100;//J

printf("\t\t\tWithout air gap       With air gap")
printf("\nExciting current        %.2f A                %.1f A",I,I2)
printf("\nInductance              %.1f mH                %.1f mH",L,L2)
printf("\nStored Energy           %.3f J               %.2f J",E,E2)


// Answer in the textbook are not accurate
