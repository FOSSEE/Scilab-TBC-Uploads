clc
Ti = 2000 // Hot gas inlet temperature in K
Te = 450 // Hot gas exhaust temperature in K
T0 = 300 // Ambient temperature in K
Q1_dot = 100 // Heating rate provided by steam in kW
cpg = 1.1 // Heat capacity of gas in kJ/kg
wg = Q1_dot/(cpg*(Ti-Te)) // mass flow rate of hot gas
af1 = wg*cpg*T0*((Ti/T0)-1-log(Ti/T0)) // Availability at inlet
af2 = wg*cpg*T0*((Te/T0)-1-log(Te/T0)) // Availability at exit
afi = af1-af2 // Change in availability
h1 = 2801 // Enthalpy at state 1 in kJ/kg
h3 = 169 //Enthalpy at state 3 in kJ/kg
h4 = 172.8 //Enthalpy at state 4 in kJ/kg
h2 = 1890.2 // Enthalpy at state 2 in kJ/kg
s1 = 6.068 // Entropy at state 1 in kJ/kgK
s2 = s1 // Isentropic process
s3 = 0.576 // Entropy at state 3 in kJ/kgK
s4 = s3 // Isentropic process
Wt = h1-h2 // Turbine work
Wp = h4-h3 // Pump work
Q1 = h1-h4 // Heat addition
Q2 = h2-h3// Heat rejection
Wnet = Wt-Wp // Net work
ws = Q1_dot/2628 // steam mass flow rate
afu = 38*(h1-h4-T0*(s1-s3)) // availability loss
I_dot = afi-afu // Rate of exergy destruction
Wnet_dot = ws*Wnet// Mechanical power rate
afc = ws*(h2-h3-T0*(s2-s3)) // Exergy flow rate of of wet steam
n2 = 100*Wnet_dot/af1 // second law efficiency

printf("\n Example 12.7\n")
printf("\n The second law efficiency is %f percent",n2)
//The answers vary due to round off error

