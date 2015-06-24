//A Textbook of Chemical Engineering Thermodynamics
//Chapter 4
//Second Law of Thermodynamics
//Example 10


clear;
clc;

//Given:
n1 = 0.21; //volume % of oxygen in air
n2 = 0.79; //volume % of nitrogen in air
R = 8.314; //ideal gas constant


//To calculate entropy of 1 kmol of air
//Using equation 4.35 (Page no. 96)
S = (-R*(n1*log(n1)+n2*log(n2))); //[kJ/kmol K]
mprintf('The total entropy change is %f kJ/kmol K',S);
//end