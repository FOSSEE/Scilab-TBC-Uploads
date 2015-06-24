// Example 8.17.2  page 8.47

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
F_dB=3;     //noise figure
F=10^(F_dB/10);
Ip=10^9*eta*P0*q*lamda/(h*c);
Its=10^9*(2*q*B*(Ip+Id));
It1= 4*K*T*B*F/R;

SN= Ip^2/(Its+It1);
SN_dB=10*log10(SN);
SN=SN/10^4;

printf("\nSNR is %.2f*10^4 or %.2f dB.",SN,SN_dB);

//answer given in the book is 6.16*10^4 (deviation of 0.9) and 47.8dB (deviation of 0.16dB)

