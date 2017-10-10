clear
// Variable Declaration
T_l=0+273// The required cooling temperature of room in °C
T_h=30+273// The temperature of outside air in °C
T_e=-5+273// The evaporating temperature of Refrigeration cycle in °C
T_c=35+273// The Condensing temperature of Refrigeration cycle in °C
deltaT=5// The temperature difference at the evaporator and the condenser in K
h_i=249.7// Enthalpy of fl uid entering evaporator in kJ/kg
h_e=395.6// Enthalpy of saturated vapour leaving evaporator in kJ/kg
h_sup=422.5// Enthalpy of superheated vapour leaving compressor in kJ/kg

// Calculation
CarnotCOP=T_l/(T_h-T_l)
printf("\n The Carnot COP for the process is %0.1f  ",CarnotCOP)
// For Refrigeration cycle,
CarnotCOP=T_e/(T_c-T_e)
printf("\n The Carnot COP for the refrigeration cycle is %0.1f  ",CarnotCOP)
// For R134a,
Q=h_e-h_i// Cooling effect in kJ/kg
W_in=h_sup-h_e// Compressor energy input in kJ/kg
COP=Q/W_in// Ideal R134a vapour compression cycle COP
printf("\n The Carnot COP for the ideal vapour compression cycle  is %0.1f  ",COP)
