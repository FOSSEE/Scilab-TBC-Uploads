clear
// Variable declaration
T_d=23// The dry bulb temperature in °C
H=40// % saturation
SH=36// The sensible heat to be removed in kW
LH=14// The latent heat in kW

// Calculation
// Plotting on the chart ( Figure 21.10 ) from 23°C/40% and using the ratio
R=SH/(SH+LH)
printf("\n The process line meets the saturation curve at - 1°C, giving the ADP (which meansthat condensate will collect on the fins as frost).")

printf("\n Taking the condition at 5°C dry bulb and measuring the proportion along theprocess line gives a coil contact factor of 75")
