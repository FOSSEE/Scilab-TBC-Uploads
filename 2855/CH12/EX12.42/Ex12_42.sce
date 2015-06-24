//Chapter 12
//page no 537
//given
clc;
clear all;
f=70;           //Maximum frequencyshift in Ghz
Ts=22;          //Pulse width in ps
CS=1.783*f*10^9*Ts*10^-12;      //half channel seperation 
printf("\n The half channel seperation %0.2f ",CS);
df=0.105/f/10^9/Ts/Ts/10^-24;       //maximum frequency shift
printf("\n The maximum frequency shift %0.0f GHz",df/10^9);
dt=0.1786/f/10^9/f/10^9/Ts/10^-12;  //time displacement
printf("\n The time displacement %0.2f ps",dt*10^12);


