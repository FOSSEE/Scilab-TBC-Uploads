//A Textbook of Chemical Engineering Thermodynamics
//Chapter 9
//Chemical Reaction Equilibria
//Example 9


clear;
clc;


//Given:
//Reaction: N2(g) + 3H2(g) --> 2NH3(g)
To = 298; //temperature in K
T = 700; //(K)
R = 8.314; //ideal gas constant
Hf = -46100; //standard heat of formation (J/mol)
Gf = -16500; //standard free energy of formtion of ammonia (J/mol)

//Specific heat data
//Cp = 27.27 + 4.93*10^-3T (for N2)
//Cp = 27.01 + 3.51*10^-3T (for H2)
//Cp = 29.75 + 25.11*10^-3T (for NH3)

//To estimate free energy change and equilirium constant at 700 K
Ho = 2*Hf;
Go = 2*Gf;
alpha = 2*29.75 - 27.27 - 3*27.01;
betta = (2*25.11 - 4.93 - 3*3.51)*10^-3;

//Using eq. 9.46 (Page no. 412)
del_H = Ho - alpha*To - (betta/2)*To^2;
//Using eq. 9.48 (Page no. 413)
A = -(Go - del_H + alpha*To*log(To) + (betta/2)*To^2)/(R*To);

//Using eq. 9.47 and 9.48 (Page no. 412)
K = %e^((-del_H/(R*T)) + (alpha/R)*log(T) + (betta/(2*R))*T + A);
G = del_H - alpha*T*log(T) -(betta/2)*T^2 - A*R*T;

mprintf('At 700 K');
mprintf('\n Equilibrium constant is %3.2e',K);
mprintf('\n Standard free energy change is %f J/mol',G);

//end