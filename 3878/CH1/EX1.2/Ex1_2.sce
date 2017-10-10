clear
// Variable Declaration
T_f=80// Final Temperature in °C
T_i=0// Initial Temperature in °C
h_f=334.91// The specific enthalpy of water in kJ/kg

// Calculation
C=h_f/(T_f-T_i)// The average specific heat capacity in kJ/(kg K)
printf("\n The average specific heat capacity is %0.3f  kJ/(kg K)", C)
