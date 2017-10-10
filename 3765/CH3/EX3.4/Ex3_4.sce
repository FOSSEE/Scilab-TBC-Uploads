clc
// Example 3.4.py
// A normal shock wave is standing in the test section of a supersonic wind tunnel.
// Upstream of the wave, M1 = 3, p1 = 0.5 atm, and T1 = 200 K. Find M2, p2, T2 and
// u2 downstream of the wave


// Variable declaration from example 1.1
M1 = 3.0         // upstream mach number
p1 = 0.5         // upstream pressure (atm)
T1 = 200.0       // upstream temperature (K)
R = 287.0        // gas constant (J/Kg/K)
gamma1 = 1.4      // ratio of specific heats for air

// Calculations 

// from shock relation (Table A2) for M1 = 3.0
// subscript 2 means downstream of the shock
p2_by_p1 = 10.33    // p2/p1
T2_by_T1 = 2.679    // T2/T1
M2 = 0.4752         // M2

p2 = p2_by_p1 * p1       // downstream pressure (atm)
T2 = T2_by_T1 * T1       // downstream temperature (K)
a2 = (gamma1*R*T2** 0.5) // speed of sound downstream of the shock (m/s)
u2 = M2*a2               // downstream velocity (m/s)


// Result 
printf("\n M2 = %.4f",(M2))

printf("\n p2 = %.3f atm",(p2))

printf("\n T2 = %.1f K",(T2))

printf("\n u2 = %.1f m/s",(u2))

