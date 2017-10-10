clear
// Variable declaration
T_d1=24// The dry bulb temperature in °C
T_d2=7// The dry bulb temperature in °C
H=45//  % saturation
cf=0.78// Contact factor
h_1=45.85// The enthalpy in kJ/kg
h_2=22.72// The enthalpy in kJ/kg

// Calculation
//(a) By construction on the chart ( Figure 21.9 ), 10.7°C dry bulb, 85% saturation.
//(b) By calculation, the dry bulb will drop 78% of 24 to 7°C:
dT=T_d1-(cf*(T_d1-T_d2))// The drop in dry bulb temperature in °C
dh=h_1-(cf*(h_1-h_2))// The drop in enthalpy in kJ/kg
printf("\n \nThe drop in dry bulb temperature=%2.1f°C \nThe drop in enthlpy=%2.2f kJ/kg",dT,dh)

