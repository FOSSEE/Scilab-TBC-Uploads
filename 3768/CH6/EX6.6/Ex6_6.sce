//Example number 6.6, Page number 118

clc;clear;
close;

//Variable declaration
EF=5.5;     //energy(eV)
FE=10/100;   //probability
e=1.6*10**-19;      //charge(c)
Kb=1.38*10**-23;     //boltzmann constant(J/k)
//Calculation
E=EF+(EF/100);    
x=(E-EF)*e;
y=x/Kb;
z=(1/FE)-1;
T=y/log(z);      //temperature(K)
//Result
printf("temperature is %.1f K",T)
