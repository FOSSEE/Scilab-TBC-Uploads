clear
// Variable declaration
T_d=37// The dry bulb temperature of air in °C
H=24// % saturation
n_s=75// Saturation efficiency in %
h=62.67// The entering enthalpy in kJ/kg

// Calculation
// By construction on the chart, or from tables, the ultimate saturation condition would be 21.5°C, and 75% of the drop from 37°C to 21.5°C gives a fi nal dry bulb of 25.4°C.
h_fg=2425// The average latent heat of water over the working range in kJ/kg
q=(h_fg)**-1// The amount of water to be evaporated in kg/(s kW)
printf("\n The amount of water to be evaporated is %0.3f kg/(s kW)",q)
