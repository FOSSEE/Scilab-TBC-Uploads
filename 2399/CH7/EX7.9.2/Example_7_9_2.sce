// Example 7.9.2 
clc;
clear;
lamda=1300d-9;
h=6.626d-34;    //plank's constant
c=3d8;      //speed of light
q=1.6d-19;  //charge of electron
eta=90/100; //quantum efficiency
P0=300d-9;  //optical power
Id=4;    //dark current
B=20d6;     //bandwidth
K=1.39d-23; //Boltzman constant
T=298;      //temperature
R=1000;     //load resister
Ip= 10^9*eta*P0*q*lamda/(h*c);
Its=10^9*(2*q*B*(Ip+Id));
Its=sqrt(Its);
printf("\nrms shot noise current is %.2f nA.",Its);
It= 4*K*T*B/R;
It=sqrt(It);
printf("\nThermal noise is %.2e A.",It);
//answer given in book for shot noise is 1.34nA, deviation of 0.01nA.
//answer given in book for Thermal noise it is 1.81*10^-8 A, deviation of 0.01*10^-8.
