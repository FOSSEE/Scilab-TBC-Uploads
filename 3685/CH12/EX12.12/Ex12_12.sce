clc
// From table 
h1 = 2792.2 // Enthalpy at state 1 in kJ/kg 
h4 = 122.96// Enthalpy at state 4 in kJ/kg 
hb = 254.88 // Enthalpy at state b in kJ/kg 
hc = 29.98// Enthalpy at state c in kJ/kg 
ha = 355.98 // Enthalpy at state a in kJ/kg 
hd = hc // Isenthalpic process
h2 = 1949.27 // // Enthalpy at state 2 in kJ/kg 
//
m = (h1-h4)/(hb-hc) // Amount of mercury circulating
Q1t = m*(ha-hd) // Heat addition
W1t = m*(ha-hb) + (h1-h2) // Turbine work
n = W1t/Q1t // first law efficiency

printf("\n Example 12.12 \n")
printf("\n Overall efficiency of the cycle is %f percent",n*100)
//The answers vary due to round off error

S = 50000 // Stem flow rate through turbine in kg/h
wm = S*m // mercury flow rate
printf("\n Flow through the mercury turbine is %e kg/h",wm)

Wt = W1t*S/3600 // Turbine work
printf("\n Useful work done in binary vapor cycle is %f MW",Wt/1e3)
nm = 0.85 // Internal efficiency of mercury turbine
ns = 0.87 // Internal efficiency of steam turbine
WTm = nm*(ha-hb) // turbine work of mercury based cycle
hb_ = ha-WTm // Enthalpy at state b in kJ/kg
m_ = (h1-h4)/(hb_-hc) // mass flow rate of mercury
h1_ = 3037.3 // Enthalpy at state 1 in kJ/kg
Q1t = m_*(ha-hd)+(h1_-h1) // Heat addition
x2_ = (6.9160-0.4226)/(8.47-0.4226) // steam quality
h2_ = 121+(0.806*2432.9) // Enthalpy at state 2 in kJ/kg 
WTst = ns*(h1_-h2_) // Turbine work
WTt = m_*(ha-hb_)+WTst // Total turbine work
N = WTt/Q1t //Overall efficiency 
printf("\n Overall efficiency is %f percent",N*100)
// The answers vary due to round off error
