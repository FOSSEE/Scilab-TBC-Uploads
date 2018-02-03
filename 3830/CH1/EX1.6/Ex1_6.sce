// Exa 1.6

clc;
clear;

// Given

Imax = 100*10^-6; // Initial range of Ammeter in Amp
Rm = 800; // Meter resistance in Ohms
I1max = 0.1; // Range to be extended in Amp
I2max = 10; // Range to be extended in Amp

// Solution

printf(' Referring Figs. 1.21 and 1.22 :- \n');

n = I1max/Imax;
Rsh = Rm/(n-1);
printf('  Ra + Rb + Rc = Rsh; \n ');
printf(' The value of Rsh by calculations = %.4f Ohms \n',Rsh);
printf('  Referring calculations done in textbook,\n  we can get values of Ra,Rb and Rc as follows :- \n');
Rc = Imax*(Rsh+Rm)/I2max;
Rb = (Imax/I1max)*(Rsh+Rm) - Rc;
Ra = Rsh-(Rb+Rc);
printf('  Ra = %.3f Ohms, Rb = %.3f Ohms and Rc = %.3f Ohms \n',Ra,Rb,Rc);

//The answer provided in the textbook is wrong for Rc and not at all given for Ra and Rb
