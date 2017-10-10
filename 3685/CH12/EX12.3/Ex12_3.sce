clc
P1 = 0.08 // Exhaust pressure in bar
sf = 0.5926 // Entropy of fluid in kJ/kgK
x2s = 0.85 // Steam quality
sg = 8.2287 // Entropy of gas in kJ/kgK
s2s = sf+(x2s*(sg-sf)) // Entropy of mixture at state 2s in kJ/kgK
s1 = s2s // Isentropic process
P2 = 16.832 // by steam table opposite to s1 in bar
h1 = 3165.54 // Enthalpy at state 1 in kJ/kg
h2s = 173.88 + (0.85*2403.1) // Enthalpy at state 2s in kJ/kg
h3 = 173.88// Enthalpy at state 3 in kJ/kg
vfp2 = 0.001 // specific volume of liquid in m^3/kg
h4s = h3 + (vfp2*(P2-P1)*100)// Enthalpy at state 4s in kJ/kg
Q1 = h1-h4s // Heat addition
Wt = h1-h2s // Turbine work
Wp = h4s-h3 // Pump work
n_cycle = 100*((Wt-Wp)/Q1) // Cycle efficiency
Tm = (h1-h4s)/(s2s-sf) // Mean temperature of heat addition

printf("\n Example 12.3")
printf("\n The greatest allowable steam pressure at the turbine inlet is %f bar",P2)

printf("\n Rankine cycle efficiency is %f percent",n_cycle)

printf("\n Mean temperature of heat addition is %f degree celcius",Tm-273)
//The answers vary due to round off error

