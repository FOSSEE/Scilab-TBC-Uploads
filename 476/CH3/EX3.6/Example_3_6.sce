//A Textbook of Chemical Engineering Thermodynamics
//Chapter 3
//P-V-T Behaviour and Heat Effects
//Example 6


clear;
clc;


//Given:
V = 0.3821*10^-3 //molar volume(m^3/mol)
T = 313; //temperature (K)
R = 8.314; //ideal gas constant
a = 0.365; b = 4.28*10^-5; //Vander Waals constant

//To compare the pressures

//(a): Ideal gas equation
P = ((R*T)/(V*10^5)); //pressure in bar
mprintf('Pressure obtained by ideal gas equation is %f bar',P);

//(b): Van der Waals equation
P = ((((R*T)/(V-b))-(a/(V^2)))/(10^5));
mprintf('\nPressure obtained by Van der Waals equation is %f bar',P);

//end
