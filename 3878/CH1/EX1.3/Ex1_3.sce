clear
// Variable Declaration
P=1.013// Pressure in bar
h_fg=2257// The latent heat of boiling water in kJ/kg
T_b=100 // The boiling point temperature of water in °C
m=1 // The mass of water in kg
T_i=30 // The initial temperature of water in °C
C_p=4.19// The specific heat of water in kJ/kg°C

// Calculation
Q=m*((C_p*(T_b-T_i))+h_fg)// The quantity of heat added in kJ
printf("\n The quantity of heat added is %0.1f  kJ",Q)
