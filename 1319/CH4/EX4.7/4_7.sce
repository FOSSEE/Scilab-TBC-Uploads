//Dynamometer wattmeter power calculation of the load

clc;
clear;

P=250; // Power Recorded by the wattmeter

V=200; // Load voltage

R=2000; // Resistance of the highly non-inductive pressure coil

I=V/R; // Ohm's Law

Pcoil=V*I; // Power Absorbed by the pressure coil

Pl=P-Pcoil; // Power taken by the load

printf('The Power taken by the load = %g watts. \n',Pl)


