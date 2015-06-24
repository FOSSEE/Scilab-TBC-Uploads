//A Textbook of Chemical Engineering Thermodynamics
//Chapter 8
//Phase Equilibria
//Example 11


clear;
clc;


//Given:
x1 = 46.1/100; //mole percent of A
P = 101.3; //total pressure of system (kPa)
P1_s = 84.8; //vapour pressure of component A (kPa)
P2_s = 78.2; //vapour pressure of component B (kPa) 

//To calculate van Laar constants
gama1 = P/P1_s;
gama2 = P/P2_s;
x2 = 1-x1;

//van Laar constants:
//Using eq. 8.69 (Page no. 348)
A = log (gama1)*(1 + (x2*log(gama2))/(x1*log(gama1)))^2;
B = log (gama2)*(1 + (x1*log(gama1))/(x2*log(gama2)))^2;

mprintf('van Laar constants are:');
mprintf('\n A = %f',A);
mprintf('\n B = %f',B);

//end