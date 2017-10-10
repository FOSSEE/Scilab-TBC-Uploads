clc
V1 = 0.3 // Initial volume in m^3
V2 = 0.15 // Final volume in m^3
P = 0.105 // Initial Pressure in MPa
Q = -37.6 // Heat transferred in kJ
W = P*(V2-V1)*1e6 // Work done
U = Q*1e3-W // Internal energy change
printf("\n Example 4.1")
printf("\n The internal energy of the gas decrease by %f kJ in the process.",abs(U)/1e3)

