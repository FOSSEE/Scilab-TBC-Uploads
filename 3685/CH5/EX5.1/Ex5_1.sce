
clc
// Part(a)
V1 = 0.95 // Inlet volume flow rate in m^3/kg
P1 = 100 // Pressure at inlet in kPa
v1 = 7 // velocity of flow at inlet in m/s
V2 = 0.19 // Exit volume flow rate in m^3/kg
P2 = 700 // Pressure at exit in kPa 
v2 = 5 // velocity of flow at exit in m/s
w = 0.5 // mass flow rate in kg/s
u21 = 90  // change in internal energy in kJ/kg
Q = -58  // Heat transfer in kW
W =  - w*( u21 + (P2*V2-P1*V1) + ((v2^2-v1^2)/2) ) + Q  // W = dW/dt  
printf("\n Example 5.1")
printf("\n The rate of work input is %d kW",abs(W))
//The answers given in textbook is wrong
// Part (b)
A = (v2/v1)*(V1/V2)  // A = A1/A2
d_ratio = sqrt(A)  // d = d1/d2

printf("\n The ratio of the inlet pipe diameter and outlet pipe diameter is %f ",d_ratio)

//The answers vary due to round off error

