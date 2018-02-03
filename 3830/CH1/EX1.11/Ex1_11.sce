// Exa 1.11

clc;
clear;

// Given

// An Ohm meter
Ifs = 0.001; // Current in Amp
V =5; // Supply voltage in Volts
Rm = 200; // Meter resistance in Ohms

// Solution

// Ifs = V/(Rm+Rp);

Rp =V/Ifs - Rm;

printf('Value of Rx with 20 percent full-scale deflection :- \n');
P1 = 0.2;
Rx1 = (Rp+Rm)/P1 - (Rp+Rm);
printf('The resistor value for 20 percent of full scale deflection = %d k Ohms \n',Rx1/1000);
printf(' Value of Rx with 40 percent full-scale deflection :- \n');
P2 = 0.4;
Rx2 = (Rp+Rm)/P2 - (Rp+Rm);
printf('The resistor value for 40 percent of full scale deflection = %.1f k Ohms \n',Rx2/1000);
printf(' Value of Rx with 50 percent full-scale deflection :- \n');
P3 = 0.5;
Rx3 = (Rp+Rm)/P3 - (Rp+Rm);
printf('The resistor value for 50 percent of full scale deflection = %d k Ohms \n',Rx3/1000);
