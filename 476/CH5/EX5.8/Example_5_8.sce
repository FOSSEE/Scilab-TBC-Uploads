//A Textbook of Chemical Engineering Thermodynamics
//Chapter 5
//Some Applications of the Laws of Thermodynamics
//Example 8


clear;
clc;


//Given:
P1 = 100; //initial pressure of saturated steam (kPa)
P2 = 500; //final pressure (kPa)
eff = 0.8; //compression efficiency

//Referring steam tables
//Properties of steam entering the compressor
H1 = 2675.5; //enthalpy (kJ/kg)
S1 = 7.3594; //entropy (kJ/kg K)

//Properties of compressed steam
H2 = 3008; //enthalpy (kJ/kg)
S2 = S1; //isentropic compression

//To calculate work required and temperature

Hs = H2-H1;
//Using eq. 5.44 (Page no. 128)
W_isentropic = -Hs;
W_act = W_isentropic/eff;
mprintf('The work required for compression is %f kJ/kg',-W_act);

H = Hs/eff; //actual change in enthalpy
H_act = H1+H; //actual enthalpy of steam leaving the compressor
//From steam tables for superheated steam at 500 kPa and enthalpy of H_act
T = 586; //temperature (K)
mprintf('\nTemperature of exhaust steam is %i K',T);

//end