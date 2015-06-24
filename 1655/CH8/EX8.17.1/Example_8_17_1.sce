// Example 8.17.1  page 8.46

clc;
clear;

lamda=0.85d-6;
h=6.626d-34;    //plank's constant
c=3d8;      //speed of light
q=1.6d-19;  //charge of electron
eta=65/100; //quantum efficiency
P0=300d-9;  //optical power
Id=3.5;    //dark current
B=6.5d6;     //bandwidth
K=1.39d-23; //Boltzman constant
T=293;      //temperature
R=5d3;     //load resister
Ip= 10^9*eta*P0*q*lamda/(h*c);
Its=10^9*(2*q*B*(Ip+Id));
Its=sqrt(Its);
printf("\nrms shot noise current is %.2f nA.",Its);

It= 4*K*T*B/R;
It=sqrt(It);
It=It*10^9;
printf("\nThermal noise is %.2f nA.",It);

//answer given in book for Thermal noise it is 4.58nA, deviation is 0.02nA.
