//A Textbook of Chemical Engineering Thermodynamics
//Chapter 7
//Properties of Solutions
//Example 4


clear;
clc;


//Given:
V1_w = 0.816*10^-3; //partial molar volume of water in 96% alcohol solution
V1_e = 1.273*10^-3; //partial molar volume of ethanol in 96% alcohol solution
V2_w = 0.953*10^-3; //partial molar volume of water in 56% alcohol solution
V2_e = 1.243*10^-3; //partial molar volume of ethanol in 56% alcohol solution
d = 0.997*10^3; //density of water (kg/m^3)

//To calculate the volume of water to be added and volume of dilute alcohol solution
//Basis: 
V = 2*10^-3; //volume of alcohol solution (m^3)
V_sp = (0.96*V1_e)+(0.04*V1_w); //volume of 1 kg of laboratory alcohol
m_e = V/V_sp; //mass of 2*10^-3 m^3 alcohol 

//(a).
//Let mass of water added be m kg
//Taking an alcohol balance
m = (m_e*0.96)/0.56 - m_e;
v = m/d;
mprintf('\n (a).');
mprintf('\n Mass of water added is %f kg',m);
mprintf('\n Volume of water added is %4.3e cubic m',v);

//(b)
m_sol = m_e + m; //mass of alcohol solution obtained
sp_vol = (0.56*V2_e)+(0.44*V2_w); //specific volume of 56% alcohol
V_dil = sp_vol*m_sol; //volume of dilute alcohol solution
mprintf('\n\n (b)');
mprintf('\n Volume of dilute alcohol solution is %5.4e cubic m',V_dil);

//end