//A Textbook of Chemical Engineering Thermodynamics
//Chapter 4
//Second Law of Thermodynamics
//Example 14


clear;
clc;

//Given:
V = 1; //volume of each compartment in cubic meters
P_sat = 683.6; //pressure of saturated steam (kPa)
P_steam = 101.3; //pressure of supereated steam (kPa)
T_sat = 437.2; //temperature of system (K)

//Referring steam tables
//For saturated steam at pressure 683.6 kPa and temp 437.2 K
H_sat = 2761; //enthalpy of saturated steam (kJ/kg)
S_sat = 6.7133; //entropy of saturated steam (kJ/kg K)
spvol_sat = 278.9*10^-3; //specific volume of saturated steam (cubic m/kg)
U_sat = 2570.4; //specific internal energy of saturated steam (kJ/kg)

//For superheated steam at 101.3 kPa and 437.2 K
H_steam = 2804; //enthalpy of superheated steam (kJ/kg)
S_steam = 7.6712; //entropy of superheated steam (kJ/kg K)
spvol_steam = 1976.2*10^-3; //specific volume of superheated steam (cubic m /kg)
U_steam = 2603.3; //specific internal energy of superheated steam (kJ/kg)


//To determine the change in entropy of system

m_sat = V/spvol_sat; //mass of satureated steam(kg)
m_steam = V/spvol_steam; //mass of superheated steam (kg)
m_sys = m_sat+m_steam; //mass of system (kg)
spvol_sys = (2*V)/m_sys; //specific volume of system (cubic m/kg)
//Since no heat exchange and work interaction occurs so internal energy after mixing remains the same
U1_sat = m_sat*U_sat; //internal energy of saturated steam (kJ)
U1_steam = m_steam*U_steam; //internal enegy of superheated steam (kJ)
U_sys = (U1_sat+U1_steam)/m_sys; //specific internal energy of system (kJ/kg)

//Referring steam tables
//At calculated U_sys and spvol_sys
S_sys = 6.9992; //specific entropy of system (kJ/kg K)
Si = ((m_sat*S_sat)+(m_steam*S_steam)); //initial entropy of system (kJ/K)
Sf = (m_sys*S_sys); //final entropy of system (kJ/K)
S = Sf-Si; //change in entropy
mprintf('The change in entropy of the system is %f kJ/K',S);
mprintf('\nSince entropy change is positive, the process is irrevresible');

//end