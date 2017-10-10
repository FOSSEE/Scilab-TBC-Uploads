// Stator input of 3 phase 4 pole induction motor

clc;
clear;

p=4;
f=50;
Pd=4000; // Power Developed
Nr=1440;
Ps=320;// Stator loss

Ns=120*f/p;

s=(Ns-Nr)/Ns;

Pir=Pd/(1-s); // Power to the rotor

Pi=Pir+Ps; // The input to the stator

printf('The stator input of a 440V 3 phase 4 pole induction motor = %g W \n',ceil(Pi))

