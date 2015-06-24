//Example No. 5.2
clc;
clear;
close;
format('v',7);

//Given Data : 
Ia=110;//A
V=480;//volt
Ra=0.2;//ohm
p=6;//poles
C=864;//conductors
fi=0.05;//Wb(flux per pole)
back_emf=V-(Ia*Ra);//Volt
N=back_emf*60*p/C/p/fi;//rpm
disp(N,"Speed in rpm : ");
T=C*p*fi*Ia/2/%pi/p;//N-m
disp(T,"Torque in N-m : ");
