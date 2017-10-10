clc
// Example 3.13.py
// In example 3.12, what is the length of the duct required to choke the flow//


// Variable declaration from example 3.12
M1 = 3.0          // mach number
C1 = 0.5222       // C1 = 4*f*L1star/D
f = 0.005         // friction coefficient
D = 0.4           // diameter of pipe (in ft)

// Calculations 
L1star = 0.5222 * D/4.0/f 


// Result 
printf("\n Length required to choke the flow is %.2f ft", L1star)

