// Formulae's from Example 1.6 are used here

// Exa 1.14

clc;
clear;

// Given

// Referring Fig. 1.50
Im = 100*10^-6; // Meter resistance in Amp
Rm = 1000; // Meter resistance in Ohms
I1 = 1; // in Amp
I2 = 0.1; // in Amp
I3 = 0.01; // in Amp

// Solution

n = I3/Im;
Rsh = Rm/(n-1);
printf('  Ra + Rb + Rc = Rsh; \n ');
printf(' The value of Rsh by calculations = %.4f Ohms \n',Rsh);

Rc = Im*(Rsh+Rm)/I1;
Rb = (Im/I2)*(Rsh+Rm) - Rc;
Ra = Rsh-(Rb+Rc);
printf('  Ra = %.3f Ohms, Rb = %.3f Ohms and Rc = %.3f Ohms \n',Ra,Rb,Rc);

//The answer provided in the textbook is wrong for Ra calculation
