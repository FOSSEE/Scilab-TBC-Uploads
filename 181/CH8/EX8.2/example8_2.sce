// Firing angle of Thyristor
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 8-2 in page 377

clear; clc; close;

// Given Data
Il=50^10*-3; // Latching current of the Thyristor in mA
t=50^10*-6; // Duration of firing pulse in second
Es=50; // DC voltage of the circuit in V
R=10; // Resistance of the circuit in ohm
L=0.25; // Inductance of the circuit in H
e=2.718282; // Constant of calculation

// Calculations
tou=0.025; 
i=(Es/R)*(1-exp((-(50*10^-6))/tou));
printf("(a) i = %0.3e A\n",i); 

if(i<Il)
 printf("Since the Gate current is less than Latching Current, SCR will not get fired \n");
else
 printf("Since the Gate current is more than Latching Current, SCR will get fired \n");
end

// Results
// SCR will not get fired in the Circuit