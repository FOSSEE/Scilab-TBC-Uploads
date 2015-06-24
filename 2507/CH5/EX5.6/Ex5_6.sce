clc
clear
printf("Example 5.6 | Page number 126 \n\n");
// Calculate work input to compressor

//Given Data
p1 = 1e5 // N/m^2 //inlet pressure
v1 = 0.08 //m^3/kg // specific volume at inlet
p2 = 7e5 // N/m^2 //exit pressure
v2 = 0.016 // m^3/kg //specific volume at exit
u1 = 48 // kJ/kg // internal energy at inlet
u2 = 200 // kJ/kg // internal energy at exit
Q = -120 // kJ/kg // heat loss
//Solution
Wc = ((u2 - u1) + (p2*v2 - p1*v1)*.001 - Q)*-1 // kJ/kg // work input to compressor
printf("Work input to compressor (Wc) = %.1f kJ/kg",Wc)
