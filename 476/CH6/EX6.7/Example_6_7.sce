//A Textbook of Chemical Engineering Thermodynamics
//Chapter 6
//Thermodynamic Properties of Pure Fluids
//Example 7


clear;
clc;


//Given:
T = 773; //temperature (K)
P = 100; //pressure (bar)
Ho = 0; //enthalpy of nitrogen at 273 K and 1 bar
So = 192.4; //entropy of nitrogen at 298 K and 1 bar
To = 273; //(K)
Po = 1; //(bar)
R = 8.314; //ideal gas constant (kJ/kmol K)
//Cp = 27.3+(4.2*10^-3*T) molal heat capacity at 1 bar

//To calculate internal energy enthalpy entropy and free energyfor one mole of nitrogen
//Step 1:
//Assuming that nitrogen is initially at 273 K and 1 bar
//del_H1 = intg(CpdT)
del_H1 = 27.3*(T-To)+4.2*10^-3*(T^2-To^2)/2;

//Assuming that nitrogen is initially at 298 K and 1 bar
//del_S1 = intg(Cp*(dT/T))
del_S1 = 27.3*log(T/To)+4.2*10^-3*(T-To);
H1 = Ho + del_H1;
S1 = So + del_S1;

//Step 2:
//del_H2 = [V - T*(del_V/del_T)p]dP
//Since nitrogen behaves as ideal gas
//(del_V/del_T)p = R/P, V-(R*T)/P = 0
del_H2 = 0;
del_S2 = -R*log(P/Po);
H = H1 + del_H2;
S = S1 + del_S2;

//Internal energy: U = H-PV = H-RT (J/mol)
U = H - (R*T);

//Gibbs free energy (J/mol)
G = H-(T*S);

mprintf('Enthalpy is %5.3e J/mol',H);
mprintf('\n Entropy is %f J/mol K',S);
mprintf('\n Internal energy is %4.3e J/mol',U);
mprintf('\n Gibbs free energy is %4.3e J/mol',G);

//end