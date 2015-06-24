//Chapter 12
//page no 480
//given
clc;
clear all;
L=1.5;          //in km
Ls=L/3;         //in km
BwF=600;                //in MHz
fb=1;               //in Gbps
Bdlaser=0.71*BwF*L^-0.7*Ls^-0.25;
printf("Laser bandwidth is %0.0f MHz",Bdlaser);     //Answer in book is approx
mD=0.85*(fb*10^3/Bdlaser)^2;
printf("\n Mean dispersion penalty is %0.1f dB",mD);     //Answer in book is approx
