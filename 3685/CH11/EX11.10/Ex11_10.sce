clc
R = 0.082 // Gas constant in litre-atm/gmol-K
m = 1.5 // Mass flow rate in kg/s
p1 = 1 // Pressure in atm
t2 = 300 // Temperature after compression in K
p2 = 400 // Pressure after compression in atm
Tc = 151 // For Argon in K
pc = 48 // For Argon in atm
printf("\n Example 11.10 ")
a = 0.42748*((R*1000)^2)*((Tc)^2)/pc
b = 0.08664*(R*1000)*(Tc)/pc
// By solving equation v2^2 - 49.24*v2^2 + 335.6*v2 - 43440 = 0
v2 = 56.8 // In cm^3/g mol
v1 = (R*1000)*(t2)/p1
delta_h = -1790 // In J/g mol
delta_s = -57 // In J/g mol
Q = (t2*delta_s*(10^5)/39.8)/(3600*1000)
W = Q - (delta_h*(10^5)/39.8)/(3600*1000)
printf("\n Power required to run the compressor = %f kW, \n The rate at which heat must be removed from the compressor = %f kW",W,Q)
// Answers vary due to round off error.
