//A Textbook of Chemical Engineering Thermodynamics
//Chapter 7
//Properties of Solutions
//Example 20


clear;
clc;


//Given: 
//For reaction 1
//Li + 1/2Cl2 --> LiCl
Hf = -408.610; //heat of formation (kJ)

//For reaction 2
//LiCl + 12H2O --> LiCl(12H2O)
H_sol = -33.614; //heat of solution (kJ)

//To determine heat of formation of LiCl in 12 moles of water
//Adding reaction 1 and 2, we get

//Li + 1/2Cl2 + 12H2O --> LiCl(12H2O)
H_form = Hf+H_sol;
mprintf('Heat of formation of LiCl in 12 moles of water is %f kJ',H_form);

//end