clear
// Variable declaration
T_d=37// The dry bulb temperature of air in °C
T_w=25.4// The cooling temperature of water in °C
cf=0.80// Contact factor

// Calculation
T_df=T_d-(cf*(T_d-T_w))// The dry bulb temperature (final) in °C
printf("\n The dry bulb temperature (final)=%2.1f °C point D ",T_df)
printf("\n \nThe wet bulb is now 18.9°C and the enthalpy is 53 kJ/kg.")
