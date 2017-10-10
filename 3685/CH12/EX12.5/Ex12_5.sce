clc
h1 = 3230.9 // Enthalpy at state 1 in kJ/kg
s1 = 6.9212 // Entropy at state 1 in kJ/kgK
s2 = s1 // Isentropic process
s3 = s1 // Isentropic process
h2 = 2796  // Enthalpy at state 2 in kJ/kg
sf = 0.6493 // ENtropy of fluid onkJ/kgK
sfg = 7.5009 // Entropy change due to vaporization
x3 = (s3-sf)/sfg // steam quality
h3 = 191.83 + x3*2392.8 // Enthalpy at state 3
h4 = 191.83 // Enthalpy at state 4 in kJ/kg
h5 = h4 // Isenthalpic process
h6 = 640.23 // Enthalpy at state 6 in kJ/kg
h7 = h6 // Isenthalpic process
m = (h6-h5)/(h2-h5) // regenerative mass
Wt = (h1-h2)+(1-m)*(h2-h3) // turbine work
Q1 = h1-h6 // Heat addition
n_cycle = 100*Wt/Q1 // Cycle efficiency
sr = 3600/Wt // Steam rate
s7 = 1.8607  // Entropy at state 7 in kJ/kgK
s4 = 0.6493 // Entropy at state 4 in kJ/kgK 
Tm = (h1-h7)/(s1-s7) // Mean temperature of heat addition with regeneration
Tm1 = (h1-h4)/(s1-s4) // Mean temperature of heat addition without regeneration
dT = Tm-Tm1 // Change in temperature
Wt_ = h1-h3 // Turbine work
sr_ = 3600/Wt_ // Steam rate
dsr = sr-sr_// Change in steam rate
n_cycle_ = 100*(h1-h3)/(h1-h4) // Cycle effciency
dn = n_cycle-n_cycle_// Change in efficiency
printf("\n Example 12.5\n")
printf("\n Efficiency of the cycle is %f percent",n_cycle)

printf("\n Steam rate of the cycle is %f kg/kW h",sr)//The answer provided in the textbook is wrong

printf("\n Increase in temperature due to regeneration is %f degree centigrade",dT)
printf("\n Increase in steam rate due to regeneration is %f kg/kW h",dsr)//The answer provided in the textbook is wrong

printf("\n Increase in Efficiency of the cycle due to regeneration is %f percent",dn)

//The answers vary due to round off error
