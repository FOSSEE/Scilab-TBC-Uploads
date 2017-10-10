clc
// Example 1.3.py
// Calculate the isothermal compressibility for air at a pressure of 0.5 atm.

// Variable declaration
p = 0.5           // pressure (atm)
p_si = 0.5*101325 // pressure (N/m^2)
p_eng = 0.5*2116  // pressure (lb/ft^2)

// Calculations 
tau_atm = 1/p       // isothermal compressibility in atm^-1
tau_si = 1/p_si     // isothermal compressibility in m^2/N
tau_eng = 1/p_eng   // isothermal compressibility in ft^2/lb

// Result 
printf("\n Isothermal compressibility for air at %.1f atm is %.2f atm^-1 or %.2e m^2/N or %.2e ft^2/lb", p, tau_atm, tau_si, tau_eng)

