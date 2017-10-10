clc
h1 = 3023.5  // Enthalpy of steam at state 1 in kJ/kg
s1 = 6.7664 // Enthalpy of steam at state 1 in kJ/kgK
s2 = s1 // Isentropic process
s3 = s1 //Isentropic process
s4 = s1 //Isentropic process
t_sat_20 = 212 // Saturation temperature at 20 bar in degree Celsius
t_sat_1 = 46 // Saturation temperature at 1 bar in degree Celsius
dt = t_sat_20-t_sat_1 // Change in temperature
n =3 // number of heaters
t = dt/n // temperature rise per heater
t1 = t_sat_20-t // Operational temperature of first heater
t2 = t1-t// Operational temperature of second heater
// 0.1 bar
hf = 191.83 // Enthalpy of fluid in kJ/kg
hfg = 2392.8 // Latent heat of vaporization in kJ/kg
sf = 0.6493// Entropy of fluid in kJ/kgK
sg = 8.1502// Entropy of gas in kJ/kgK
// At 100 degree
hf100 = 419.04 // Enthalpy of fluid in kJ/kg  
hfg100 = 2257.0// Latent heat of vaporization in kJ/kg 
sf100 = 1.3069 // Entropy of fluid in kJ/kgK 
sg100 = 7.3549 // Entropy of gas in kJ/kgK
// At 150 degree
hf150 = 632.20 // Enthalpy of fluid in kJ/kg  
hfg150 = 2114.3// Latent heat of vaporization in kJ/kg  
sf150 = 1.8418 // Entropy of fluid in kJ/kgK 
sg150 = 6.8379// Entropy of gas in kJ/kgK
x2 = (s1-sf150)/4.9961 // Steam quality
h2 = hf150+(x2*hfg150) // Enthalpy at state 2 in kJ/kg
x3 = (s1-sf100)/6.0480 // Steam quality
h3 = hf100+(x3*hfg100) // Enthalpy at state 3 in kJ/kg 
x4 = (s1-sf)/7.5010 // Steam quality
h4 = hf+(x4*hfg)//Enthalpy at state 4 in kJ/kg
h5 = hf // Enthalpy at state 5 in kJ/kg
h6 = h5 //Enthalpy at state 6 in kJ/kg
h7 = hf100 // Enthalpy at state 7 in kJ/kg
h8 = h7 // Enthalpy at state 8 in kJ/kg
h9 = 632.2  // Enthalpy at state 9 in kJ/kg
h10 = h9 // Enthalpy at state 10 in kJ/kg
m1 = (h9-h7)/(h2-h7) // regenerative mass 
m2 = ((1-m1)*(h7-h6))/(h3-h6) // regenerative mass
Wt = 1*(h1-h2)+(1-m1)*(h2-h3)+(1-m1-m2)*(h3-h4) // Turbine work
Q1 = h1-h9 // Heat addition
Wp = 0  // Pump work is neglected
n_cycle = 100*(Wt-Wp)/Q1 // Cycle efficiency
sr = 3600/(Wt-Wp)  // Steam rate

printf("\n Example 12.6\n")
printf("\n Steam quality at turbine exhaust is %f ",x3)
printf("\n Net work per kg of stem is %f kJ/kg",Wt)
printf("\n Cycle efficiency is %f percent",n_cycle)
printf("\n Stream rate is %f kg/kW h",sr)
//The answers vary due to round off error

