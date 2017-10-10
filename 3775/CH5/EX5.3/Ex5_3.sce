//Ex 5.3 page 185

clc;
clear;
close;

Vs=400;//V
alfa=0.25;// duty cycle
delta_I=10;// A
L=0.5;// H
R=0;// ohm

Vo=alfa*Vs;//V
//Vo+L*di/dt=Vs -- putting dt=Ton & di=delta_I
Ton=delta_I/((Vs-Vo)/L)*1000;// ms
T=Ton/alfa;// ms
f=1/T*1000;//Hz
printf('\n chopping frequency = %d Hz',f)
