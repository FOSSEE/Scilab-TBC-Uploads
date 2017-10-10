clc
// At P = .14 MPa
h1 = 236.04 // Enthalpy at state 1 in kJ/kg
s1 = 0.9322 // Entropy at state 2 in kJ/kgK
s2 = s1 // Isenthalpic process
// At P = 0.8 MPa
h2 = 272.05 // Enthalpy at state 2 in kJ/kg
h3 = 93.42 // Enthalpy at state 3 in kJ/kg
h4 = h3 // Isenthalpic process
m = 0.06 // mass flow rate in kg/s
Q2 = m*(h1-h4) // Heat absorption
Wc = m*(h2-h1) // Compressor work
Q1 = m*(h2-h4) // Heat rejection in evaporator
COP = Q2/Wc // coefficient of performance

printf("\n Example 14.2\n")
printf("\n The rate of heat removal is %f kW",Q2)
printf("\n Power input to the compressor is %f kW",Wc)
printf("\n The heat rejection rate in the condenser is %f kW",Q1)
printf("\n COP is %f kW",COP)
//The answers vary due to round off error

