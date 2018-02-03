// Formulae's from Example 1.6 are used here
// Exa 1.7

clc;
clear;

// Given

// Referring circuit given in Fig. 1.23
Rm = 1000; // Meter resistance in Ohms
Im = 100*10^-6; // Meter current in Amp
I1 = 1; // im Amp
I2 = 0.1; // in Amp
I3 = 10; // in Amp 

// Solution

n =  I3/I2;
Rsh = Rm/(n-1);
Rc = (Im/I2)*(Rsh+Rm);
Rb = Rc - (Im/I1)*(Rsh+Rm);
Ra = Rsh-(Rb+Rc);

printf('The Values of Ra, Rb and Rc are %.2f Ohms, %.2f Ohms and %.2f Ohms respectively \n',Ra,Rb,Rc);

//The answer provided in the textbook is wrong for Ra
