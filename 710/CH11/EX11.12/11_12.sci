clc();
clear;
//To determine the magnetic field
k=1.5;                                             //maximum kinetic energy in MeV
m=1.67*10^-27;                                    //mass of proton in kg
q=1.6*(10^-19);                                   //charge of particle
r=0.35;                                           //radius in m
//k=[(q^2)*(B^2)*(r^2)]/(2*m).Therefore B=[sqrt(k*2*m)]/q*r
B=sqrt(k*10^6*1.6*10^-19*2*m)/(q*r)               //magnetic field in T
printf("The mgnetic field is %f T",B);