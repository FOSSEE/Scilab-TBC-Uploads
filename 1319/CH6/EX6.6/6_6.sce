//Useful Flux per pole on no load shunt motor

clc;
clear;
V=250;
Z=2*110;// One turn is two conductors
Ia=13.3;
N=908;
Ra=0.2;
A=2; //Wave Winding
P=6;

Eb=V-(Ia*Ra);// Back EMF

phi=Eb*60*A/(N*Z*P);

printf('The useful flux per pole on no load of a 250V, 6 pole shunt motor = %g mWb \n',phi*1000)




