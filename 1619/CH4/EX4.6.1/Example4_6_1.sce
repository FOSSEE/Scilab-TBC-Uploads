//Example 4.6.1 page 4.34

clc;
clear;
lamda = 1300*10^-9;
Id= 4*10^-9;
n=0.9;
Rl= 1000;
Pincident= 300*10^-9;
BW= 20*10^6;
q= 1.602*10^-19;
h= 6.625*10^-34;
v= 3*10^8;
Iq= sqrt((q*Pincident*n*lamda)/(h*v));
Iq= sqrt(Iq);
Iq=Iq*100; //converting in proper format for displaying...
printf("Mean square quantum noise current is %.2fx10^11 Amp",Iq);
I_dark= 2*q*BW*Id;
I_dark=I_dark*10^19;//converting in proper format for displaying...
printf("\n\nMean square dark current is %.3fx10^-19 Amp",I_dark);
k= 1.38*10^-23;
T= 25+273;
It= 4*k*T*BW/Rl;
It=It*10^16;//converting in proper format for displaying...
printf("\n\nMean square thermal nise current is %.2fx10^-16 Amp",It)
