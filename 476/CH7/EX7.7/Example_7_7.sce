//A Textbook of Chemical Engineering Thermodynamics
//Chapter 7
//Properties of Solutions
//Example 7


clear;
clc;


//Given:
//Volume as a function of molality:
function [y] = V(m)
    y = 1.003*10^-3 + 0.1662*10^-4*m + 0.177*10^-5*m^1.5 + 0.12*10^-6*m^2
endfunction

m = 0.1; //molality of solution (mol/kg)

//To calculate the partial molar volume of the components
//Differentiating Eq. 7.29 with reference to m, we get
V1_bar = 0.1662*10^-4 + 0.177*1.5*10^-5*m^0.5 + 0.12*2*10^-6*m;

V_sol = V(m); //volume of aqueous soluttion
n1 = m;
n2 = 1000/18;
V2_bar = (V_sol - n1*V1_bar)/n2;
mprintf('Partial molar volume of water = %4.3e cubic m/mol',V2_bar);
mprintf('\n Partial molar volume of NaCl = %4.3e cubic m/mol',V1_bar);

//end