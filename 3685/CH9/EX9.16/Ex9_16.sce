clc
// At dead state of 1 bar, 300K
u0 = 113.1 // Internal energy in kJ/kg
h0 = 113.2 // Enthalpy in kJ/kg
v0 = 0.001005 // Specific volume in m^3/kg
s0 = 0.395 // Entropy in kJ/kg
T0 = 300 // Atmospheric temperature in K
P0 = 1 // Atmospheric pressure in bar 
K = h0-T0*s0
// Part (a)
// At 1bar and 90 degree Celsius 
u = 376.9 // Internal energy in kJ/kg
h = 377 // Enthalpy in kJ/kg
v = 0.001035 // specific volume in m^3/kg
s = 1.193 // Entropy in kJ/kgK
m = 3 // Mass of water in kg
fi = m*(h-(T0*s)-K)  //Energy of system

printf("\n Example 9.16")
printf("\n Energy of system in Part (a) is %f kJ",fi)
//The answers vary due to round off error

// Part (b)
// At P = 4 Mpa, t = 500 degree
u = 3099.8// Internal energy in kJ/kg 
h = 3446.3 // Enthalpy in kJ/kg 
v = 0.08637 // specific volume in m^3/kg 
s = 7.090 // Entropy in kJ/kgK
m = 0.2 // Mass of steam in kg 
fib = m*(u+P0*100*v-T0*s-K) // Energy of system
printf("\n Energy of system in Part (b) is %f kJ",fib)

// Part (c) // P = 0.1 bar
m = 0.4 // Mass of wet steam in kg 
x = 0.85 // Quality
u = 192+x*2245 // Internal energy 
h = 192+x*2392// Enthalpy
s = 0.649+x*7.499 // Entropy
v = 0.001010+x*14.67 // specific volume
fic = m*(u+P0*100*v-T0*s-K) // Energy of system
printf("\n Energy of system in Part (c) is %f kJ",fic)

// Part (d) 
// P = 1 Bar, t = -10 degree Celsius
m = 3 // Mass of ice in kg 
h = -354.1 // Enthalpy in kJ/kg  
s = -1.298 // at 1000kPa, -10 degree
fid = m*((h-h0)-T0*(s-s0)) // Energy of system

printf("\n Energy of system in Part (d) is %f kJ",fid) //The answer provided in the textbook is wrong


