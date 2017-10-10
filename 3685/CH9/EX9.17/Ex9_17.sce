clc
// Given
th1 = 90 // Inlet temperature of hot water in degree Celsius
tc1 = 25// Inlet temperature of cold water in degree Celsius
tc2 = 50// Exit temperature of cold water in degree Celsius
mc = 1 // mass flow rate of cold water in kg/s
T0 = 300 // Atmospheric temperature in K
th2p = 60 // Temperature limit in degree Celsius for parallel flow
th2c = 35 // Temperature limit in degree Celsius for counter flow
mhp = (tc2-tc1)/(th1-th2p) // mass flow rate of hot water in kg/s for parallel flow
mhc = (tc2-tc1)/(th1-th2c) // mass flow rate of hot water in kg/s for counter flow
// At 300 K
h0 = 113.2 // ENthalpy in kJ/kg
s0 = 0.395 // ENtropy in kJ/kgK
T0 = 300 // temperature in K
// At 90 degree celsius
h1 = 376.92 // Enthalpy in kJ/kg 
s1 = 1.1925 // Entropy in kJ/kgK
af1 = mhp*((h1-h0)-T0*(s1-s0)) // Availability
// Parallel Flow
// At 60 degree
h2 = 251.13 // Enthalpy in kJ/kg 
s2 =0.8312  // Entropy in kJ/kgK
 // At 25 degree
h3 = 104.89 // Enthalpy in kJ/kg 
s3 = 0.3674 // Entropy in kJ/kgK
// At 50 degree
h4 = 209.33 // Enthalpy in kJ/kg 
s4 = 0.7038 // Entropy in kJ/kgK
REG = mc*((h4-h3)-T0*(s4-s3)) // Rate of energy gain
REL = mhp*((h1-h2)-T0*(s1-s2)) // Rate of energy loss
Ia = REL-REG // Energy destruction
n2a = REG/REL // Second law efficiency

printf("\n Example 9.17")
printf("\n In parallel flow")
printf("\n The rate of irreversibility is %f kW",Ia)
printf("\n The Second law efficiency is %f percent",n2a*100)
//The answers vary due to round off error


// Counter flow
h2_ = 146.68 
sp = 0.5053 // At 35 degree
REG_b = REG // Rate of energy gain by hot water is same in both flows
REL_b = mhc*((h1-h2_)-T0*(s1-sp))
Ib = mhc*((h1-h2_)-(T0*(s1-sp))) // Energy destruction
n2b = REG_b/Ib // Second law efficiency
printf("\n\n In counter flow")
printf("\n The rate of irreversibility is %f kW",Ib)
printf("\n The Second law efficiency is %f percent",n2b*100)
//The answers vary due to round off error
