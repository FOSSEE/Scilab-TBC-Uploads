//Exa 3.9
// To calculate probability of exceeding signal beyond the receiver sensitivity.

clc;
clear all;

SSmean=-100; //signal strength(dBm)
Sr=-110; //receiver sensitivity(dBm)
sd=10;  //standard deviation(dB)

//solution
P_Smin=(0.5-0.5*erf((Sr-SSmean)/(sqrt(2)*sd)));
printf('probability of exceeding signal beyond the receiver sensitivity is %.2f \n',P_Smin);
