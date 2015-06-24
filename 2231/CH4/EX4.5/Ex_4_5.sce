//Example 4_5
clc;
clear;close;

//Given data: 
V=400;//V
R=0;//ohm
L=0.05;//H
alfa=0.25;//duty cycle
delta_i=10;//A

//Solution :
Vav=alfa*V;//V
delta_T=L*delta_i/(V-Vav);//s
Ton=delta_T;///s
T=Ton/alfa;//s
f=1/T;//pulses/s
disp(f,"Chopping frequency(pulses/s)");
