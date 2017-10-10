clc
h1 = 3159.3 // Enthalpy at state 1 in kJ/kg
s1 = 6.9917 // Entropy at state 1 in kJ/kgK
h3 = 173.88  // Enthalpy at state 3 in kJ/kg
s3 = 0.5926 // Entropy at state 3 in kJ/kgK
sfp2 = s3 // Isentropic process
hfp2 = h3 // Isenthalpic process
hfgp2 = 2403.1 // Latent heat of vaporization in kJ/kg
sgp2 = 8.2287 // Entropy of gas in kJ/kgK
vfp2 = 0.001008 // Specific volume in m^3/kg
sfgp2 = 7.6361// Entropy of liquid in kJ/kgK
x2s = (s1-sfp2)/(sfgp2)// Steam quality
h2s = hfp2+(x2s*hfgp2) // Enthalpy at state 2s
// Part (a)
P1 = 20 // Turbine inlet pressure in bar
P2 = 0.08 // Turbine exit pressure in bar
h4s = vfp2*(P1-P2)*1e2+h3  // Enthalpy at state 4s
Wp = h4s-h3 // Pump work
Wt = h1-h2s // Turbine work
Wnet = Wt-Wp // Net work 
Q1 = h1-h4s // Heat addition
n_cycle = Wnet/Q1// Cycle efficiency
printf("\n Example 12.2")
printf("\n Net work per kg of steam is %f kJ/kg",Wnet)//The answer provided in the textbook is wrong

printf("\n Cycle efficiency is %f percent",n_cycle*100)

// Part (b)
n_p = 0.8 // pump efficiency
n_t = 0.8// Turbine efficiency
Wp_ = Wp/n_p // Pump work
Wt_ = Wt*n_t // Turbine work
Wnet_ = Wt_-Wp_// Net work
P = 100*((Wnet-Wnet_)/Wnet) // Percentage reduction in net work
n_cycle_ = Wnet_/Q1 // cycle efficiency
P_ = 100*((n_cycle-n_cycle_)/n_cycle) //reduction in cycle
printf("\n\n Percentage reduction in net work per kg of steam is %f percent",P)
printf("\n Percentage reduction in cycle efficiency is %f percent",P_)

//The answers vary due to round off error

