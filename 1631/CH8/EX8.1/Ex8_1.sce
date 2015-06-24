
//Caption: probability of  error
//Example 8.1
//page no 374
//Find probability of bit error 
//AWGN is added to signal
clc;
clear;
N0=2*10^-15;
Ps1=1/2;
Ps2=1/2;
A=0.2*10^-3;
T=2*10^-6;

Eb=(A/sqrt(2))^2*T*Ps1+Ps2*0^2;//Eb=bit energy
z=sqrt(Eb/N0);//Probability 
disp(z,"z = ");
//Pe=(8)*10^(-4)//probability of  error from the table
Pe=1/2*erfc(z/sqrt(2));
disp("probability of bit error when P(s1)=P(s2)=1/2 ");
disp(Pe,"P(e)=");
