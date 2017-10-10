clc
h1 = 3465 // Enthalpy at state 1 in kJ/kgK
h2s = 3065 //Enthalpy at state 2s in kJ/kgK 
h3 = 3565 //Enthalpy at state 3 in kJ/kgK
h4s = 2300 // Enthalpy at state 4s in kJ/kgK
x4s = 0.88 // Steam quality at state 4s
h5 = 191.83// Enthalpy at state 5 in kJ/kgK
v = 0.001 // specific volume in m^3/kg
P = 150 // Boiler outlet pressure in bar
Wp = v*P*100 // Pump work
h6s = 206.83 // Enthalpy at state 6s in kJ/kgK
Q1 = (h1-h6s)+(h3-h2s) // Heat addition
Wt = (h1-h2s)+(h3-h4s) // Turbine work
Wnet = Wt-Wp // Net work
n_cycle = 100*Wnet/Q1 // cycle efficiency
sr = 3600/Wnet //Steam rate

printf("\n Example 12.4 \n")
printf("\n Quality at turbine exhaust is %f ",0.88)
printf("\n Cycle efficiency is %f percent",n_cycle)
printf("\n Steam rate is %f kg/kW h",sr)
//The answers vary due to round off error
