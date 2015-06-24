//Problem 44.11: An underground cable has the following primary constants: resistance R = 10 ohm/loop km, inductance L = 1.5 mH/loop km, conductance G = 1.2 μS/km and capacitance C = 0.06 μF/km. Determine by how much the inductance should be increased to satisfy the condition for minimum distortion. 

//initializing the variables:
R = 10; // in ohm/loop km
L = 0.0015; // in H/loop km
C = 0.06E-6; // in F/km
G = 1.2E-6; // in S/km

//calculation:
//the condition for minimum distortion is given by LG = CR, from which,
Lm = C*R/G
dL = Lm - L

printf("\n\n Result \n\n")
printf("\n inductance should be increased by %.2E H/loop km for minimum distortion",dL)
