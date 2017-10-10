//Exa 3.4
//To determine distance between transmitter and receiver.

clc;
clear all;

shadow=10; //in dB
Lp=150;  //in dB

//solution
disp(" Using equation given in Problem i.e Lp=133.2+40*log(d) we get,");
d=10^((Lp-10-133.2)/40);
printf("  Separation between transmitter and receiver as %.2f km',d);
