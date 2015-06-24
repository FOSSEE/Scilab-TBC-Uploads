//A Textbook of Chemical Engineering Thermodynamics
//Chapter 7
//Properties of Solutions
//Example 10


clear;
clc;


//Given:
K = 4.4*10^4; //Henry's law constant (bar)
pp = 0.25; //partial pressure of oxygen in bar
M_O2 = 32; //molecular wt of oxygen
M_water = 18; //molecular wt of water

//To estimate the solubility of oxygen in water at 298 K
//Using eq. 7.72 (Page no. 275)
x_O2 = pp/K; //mole fraction of O2
mprintf('Solubility of oxygen is %5.4e moles per mole of water',x_O2);

//In mass units
sol_O2 = (x_O2*M_O2)/M_water;
mprintf('\n Solubility of oxygen in mass units is %4.3e kg oxygen per kg water',sol_O2);

//end