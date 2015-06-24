//A Textbook of Chemical Engineering Thermodynamics
//Chapter 8
//Phase Equilibria
//Example 13


clear;
clc;


//Given:
x2 = 0.585; //mol fraction of hydrazine
P = 101.3; //total pressure of system (kPa)
P2_s = 124.76; //vapour pressure of hydrazine (kPa)

//To calculate equilibrium vapour composition for solution containing 20% (mol) hydrazine
x1 = 1-x2;
P1_s = 1.6*P2_s; //vapour pressure of water (kPa)
gama1 = P/P1_s;
gama2 = P/P2_s;

//Using eq. 8.69 (Page no. 348)
//van Laar constants:
A = log (gama1)*(1 + (x2*log(gama2))/(x1*log(gama1)))^2;
B = log (gama2)*(1 + (x1*log(gama1))/(x2*log(gama2)))^2;

//For solution containing 20% hydrazine
x2 = 0.2;
x1 = 1-x2;
ln_g1 = (A*x2^2)/(((A/B)*x1+x2)^2);
ln_g2 = (B*x1^2)/((x1+(B/A)*x2)^2);
gama1 = %e^ln_g1;
gama2 = %e^ln_g2;

//Using eq. 8.47 (Page no. 325) for components 1 and 2 and rearranging
alpha = 1.6; //alpha = P1_s/P2_s
y1 = 1/(1 + (gama2*x2)/(gama1*x1*alpha));
y2 = 1-y1;

mprintf('Equilibrium vapour composition for solution containing 20 mol percent hydrazine');
mprintf('\n Hydrazine is %f percent',y2*100);
mprintf('\n Water is %f percent',y1*100);

//end