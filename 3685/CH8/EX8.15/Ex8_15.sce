clc
// Since vacuum has zero mass
U = 0 // Initial internal energy in kJ/kg
H0 = 0 // Initial enthalpy in kJ/kg
S = 0 // Initial entropy in kJ/kgK
// If the vacuum has reduced to dead state
U0 = 0 // Final internal energy in kJ/kg
H0 = 0  // Final enthalpy in kJ/kg
S0 = 0 // Final entropy in kJ/kgK
V0 = 0 // Final volume in m^3
P0 = 1 // Pressure in bar
V = 1 // Volume of space in m^3
fi = P0*1e5*V

printf("\n Example 8.15")
printf("\n The exergy of the complete vacuum is %d kJ",fi/1e3)


