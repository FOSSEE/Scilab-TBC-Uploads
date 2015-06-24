clear;
clc;

//Example - 7.39
//Page number - 276
printf("Example - 7.39 and Page number - 276\n\n");

//Given
T = 200 + 273.15;//[K] - Temperature
R = 8.314;//[J/mol*K] - Universal gas constant

// From steam table at 200 C as reported in the book
P_sat = 1.5538;//[MPa] - Vapour pressure of saturated steam
H_vap = 2793.2;//[kJ/kg] - Enthalpy of saturated steam in vapour phase
S_vap = 6.4323;//[kJ/kg-K] - Entropy of saturated steam in vapour phase
G_sat = H_vap - T*S_vap;//[kJ/kg] - Gibbs free energy
G_sat = G_sat*18.015;//[J/mol]

// Now let us calculate the Gibbs free energy at the lowest pressure available in superheated steam tables at 200 C
// At 200 C and 0.01 MPa as reported in the book
H = 2879.5;//[kJ/kg] - Enthalpy
S = 8.9038;//[kJ/kg-K] - Entropy
G_ig = H - T*S;//[kJ/kg] - Gibbs free energy
G_ig = G_ig*18.015;//[J/mol]

// Integrating from ideal gas state at 200 C and 0.01 MPa to saturated vapour at 200 C we get
// G_sat - G_ig = R*T*log(f_sat/f_ig)

// Under the ideal gas condition the pressure is small therefore f_ig = P = 0.01 MPa
f_ig = 0.01;//[MPa]

// Solving the above equation
f_sat = f_ig*(exp((G_sat - G_ig)/(R*T)));//[MPa]

printf(" The fugacity of saturated steam at 200 C is %f MPa",f_sat);


