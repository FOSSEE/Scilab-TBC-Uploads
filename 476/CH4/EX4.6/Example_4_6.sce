//A Textbook of Chemical Engineering Thermodynamics
//Chapter 4
//Second Law of Thermodynamics
//Example 6


clear;
clc;


//Given:
T = 300; //temperature in K
P1 = 10; //initial pressure(bar)
P2 = 1; //final pressure(bar)
R = 8.314; //ieal gas constant

//To calculate the entropy change
//Using equation 4.33(Page no. 94)
S = (R*log(P1/P2)); //(kJ/kmol K)
mprintf('Entopy change is %f kJ/kmol K',S);


//end