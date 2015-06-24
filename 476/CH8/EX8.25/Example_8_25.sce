//A Textbook of Chemical Engineering Thermodynamics
//Chapter 8
//Phase Equilibria
//Example 25


clear;
clc;


//Given:
x1 = [0.0331 0.9652]; //composition of chloroform
P = [40.84 84.88]; //total pressure for system (kPa)
P1 = 82.35; //vapour pressure of chloroform at 328 K (kPa)
P2 = 37.30; //vapour pressure of acetone at 328 K (kPa) 

//To estimate the constants in Margules equation
//Using eq. 8.103 and 8.104 (Page no. 375)
g1_inf = (P(1)-(1-x1(1))*P2)/(x1(1)*P1);
g2_inf = (P(2)-(x1(2)*P1))/((1-x1(2))*P2);

//Margules equation:
//ln_g1 = x2^2*[A + 2*(B-A)*x1]
//ln_g2 = x1^2*[B + 2*(A-B)*x2]
//A = ln_g1_inf when x1 tends to 0, same for B

A = log(g1_inf);
B = log(g2_inf);

mprintf('Margules constants are:');
mprintf('\n A = %f',A);
mprintf('\n B = %f',B);

//end