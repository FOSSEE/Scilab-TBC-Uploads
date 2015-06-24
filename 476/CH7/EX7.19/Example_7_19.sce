//A Textbook of Chemical Engineering Thermodynamics
//Chapter 7
//Properties of Solutions
//Example 19


clear;
clc;


//Given:
R = 8.314; //ideal gas constant
n1 = 100; //moles of nitrogen
n2 = 100; //moles of oxygen

//To determine the change in entropy of the contents of the vessel
x1 = n1/(n1+n2);
x2 = n2/(n1+n2);

//Using eq. 7.122 (Page no. 292)
S = -R*(x1*log (x1) + x2*log (x2));
S_tot = S*(n1+n2);
mprintf('Change in entropy of components are %f J/K',S_tot);

//end