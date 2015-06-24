//A Textbook of Chemical Engineering Thermodynamics
//Chapter 7
//Properties of Solutions
//Example 13


clear;
clc;


//Given:
P = 20; //pressure in bar
//Function for fugacity of component 1
function [y] = f1(x1);
    y = (50*x1)-(80*x1^2)+(40*x1^3)
endfunction

//To determine fugacity fugacity coeffecient Henry's Law constant and activity coeffecient

//(a)
//Fugacity of component in solution becomes fugacity of pure component when mole fraction approaches 1 i.e. 
x1 = 1;
f1_pure = f1(x1);
mprintf('(a). Fugacity f1 of pure component 1 is %i bar',f1_pure);

//(b)
phi = f1_pure/P;
mprintf('\n (b). Fugacity coeffecient is %f',phi);

//(c)
//Henry's Law constant is lim (f1/x1)and x1 tends to 0 
x1 = 0;
K1 = 50 - (80*x1) + (40*x1^2);
mprintf('\n (c). Henrys Law constant is %i bar',K1);

//(d)
mprintf('\n (d). This subpart is theoretical and does not involve any numerical computation');

//end