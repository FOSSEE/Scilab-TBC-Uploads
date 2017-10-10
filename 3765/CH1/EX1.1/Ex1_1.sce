clc
// Example 1.1.py
// Consider the low-speed flow of air over an airplane wing at standard 
// sea level conditions the free-stream velocity far ahead of the wing 
// is 100 mi/h. The flow accelerates over the wing, reaching a maximum 
// velocity of 150 mi/h at some point on the wing. What is the percentage
// pressure change between this point and the free stream//


// Variable declaration
rho = 0.002377     // density at sea level (slug/ft^3)
p_1 = 2116.0       // pressure at sea level (lb/ft^2)
v_1 = 100.0        // velocity far ahead of the wing (mi/h)
v_2 = 150.0        // velocity at some point on the wing (mi/h)

// Calculations 

u_1 = v_1 * 88.0/60.0 // converting v_1 in ft/s
u_2 = v_2 * 88.0/60.0 // converting v_2 in ft/s

delP = 0.5*rho*(u_2*u_2 - u_1*u_1) // p_1 - p_2 from Bernoulli's equation
fracP = delP/p_1 // fractional change in pressure with respect to freestream

// Result 
printf("\n Fractional change in pressure is %.3f or %.1f percent", fracP, fracP*100)

