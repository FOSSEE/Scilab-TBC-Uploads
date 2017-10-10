clc
// At 25 bar, 350 degree
h1 = 3125.87 // Enthalpy in kJ/kg
s1 = 6.8481// Entropy in kJ/kgK
// 30 degree
h0 = 125.79 // Enthalpy in kJ/kg
s0 = 0.4369// Entropy in kJ/kgK
// At 3 bar, 200 degree
h2 = 2865.5 // Enthalpy in kJ/kg
s2 = 7.3115 //Entropy in kJ/kgK
// At 0.2 bar 0.95 dry
hf = 251.4 // Enthalpy of liquid in kJ/kg
hfg = 2358.3 // Latent heat of vaporization in kJ/kg
sf = 0.8320 // Entropy of liquid in kJ/kgK
sg = 7.0765// Entropy of liquid in kJ/kgK
h3 = hf+0.92*hfg // Enthalpy at state 3 in kJ/kg
s3 = sf+(0.92*sg) // Entropy at state 3 in kJ/kgK
// Part (a)
T0 = 30 // Atmospheric temperature in degree Celsius
f1 = (h1-h0)-((T0+273)*(s1-s0)) // Availability at steam entering turbine
f2 = (h2-h0)-((T0+273)*(s2-s0)) // Availability at state 2
f3 = (h3-h0)-((T0+273)*(s3-s0))// Availability at state 3

printf("\n Example 9.15")
printf("\n Availability of steam entering is %f kJ/kg",f1)
printf("\n Availability of steam leaving the turbine is %f kJ/kg",f2)

// Part (b)
m2m1 = 0.25  // mass ratio
m3m1 = 0.75 // mass ratio
Wrev = f1-(m2m1*f2)-(m3m1*f3) // Maximum work
printf("\n Maximum work is %f kJ/kg",Wrev)

// Part (c)
w1 = 600 // mass flow at inlet of turbine in kg/h
w2 = 150 // mass flow at state 2 in turbine in kg/h
w3 = 450// mass flow at state 2 in  turbine in kg/h
Q = -10  // Heat loss rate kJ/s
I = ((T0+273)*(w2*s2+w3*s3-w1*s1)-Q*3600)*103/600
printf("\n Irreversibility is %f kJ/kg",I/1e3)
//The answer provided in the textbook is wrong


