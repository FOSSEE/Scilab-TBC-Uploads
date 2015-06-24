// Scilab Code Ex8.5: Page-431 (2011)
clc;clear;
d = 50e-002;....// Thickness of the metallic rod, m
t1 = 30e-006;....// Arrival time for first pulse, s
t2 = 80e-006;....    // Arrival time for second pulse, s
v = 2*d/t2;.....// Velocity of ultrasonic waves, m/s
printf("\nThe velocity of pulse inside the rod = %4.2e m/s", v); 
x = t1*v/2;
printf("\nThe position of pulse inside the rod = %6.4f m", x); 

// Result
// The velocity of pulse inside the rod = 1.25e+004 m/s
// The position of pulse inside the rod = 0.1875 m 