clc
V1 = 0.37 // volume flow rate at inlet in m^3/kg
P1 = 600// Inlet pressure in kPa
v1 = 16 // Inlet velocity of flow in m/s
V2 = 0.62 // volume flow rate at exit in m^3/kg 
P2 = 100// Exit pressure in kPa
v2 = 270 // Exit velocity of flow in m/s
Z1 = 32 // Height of inlet port from datum in m
Z2 = 0 //Height of exit port from datum in m
g = 9.81  // Acceleration due to gravity
Q = -9  // Heat transfer in kJ/kg
W = 135  // Work transfer in kJ/kg
U12 = (P2*V2-P1*V1) + ((v2^2-v1^2)/2000) + (Z2-Z1)*g*1e-3 + W - Q  // Change in internal energy in kJ

printf("\n Example 5.2")
printf("\n The internal energy decreases by %f kJ",U12)
//The answers vary due to round off error

