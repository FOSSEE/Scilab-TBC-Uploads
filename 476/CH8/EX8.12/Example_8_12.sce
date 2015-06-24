//A Textbook of Chemical Engineering Thermodynamics
//Chapter 8
//Phase Equilibria
//Example 12


clear;
clc;


//Given:
x2 = 0.448; //mole fraction of ethanol
P = 101.3; //total pressure (kPa)
P1_s = 68.9; //Vapour pressure of benzene (kPa)
P2_s = 67.4; //vapour pressure of ethanol (kPa)

//To calculate activity coeffecients in a solution containing 10% alcohol
x1 = 1-x2;
gama1 = P/P1_s;
gama2 = P/P2_s;

//Using eq. 8.69 (Page no. 348)
//van Laar constants:
A = log (gama1)*(1 + (x2*log(gama2))/(x1*log(gama1)))^2;
B = log (gama2)*(1 + (x1*log(gama1))/(x2*log(gama2)))^2;

//For solution containing 10% alcohol
x2 = 0.1;
x1 = 1-x2;
ln_g1 = (A*x2^2)/(((A/B)*x1+x2)^2);
ln_g2 = (B*x1^2)/((x1+(B/A)*x2)^2);
gama1 = %e^ln_g1;
gama2 = %e^ln_g2;

mprintf('Activity coeffecients:');
mprintf('\n For component 1: %f',gama1);
mprintf('\n For component 2: %f',gama2);

//end