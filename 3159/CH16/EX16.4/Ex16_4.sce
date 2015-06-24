// Calculation of hysteresis loss
clc
v = 0.01 // volume in m^3
x = 1e-4 // axis intercept
y = 1e2 // axis intercept
a = 60000 // Hysteresis loop area
f = 50 // frequency in Hz
printf("\n Example 16.4")
e = x*y*a // Energy loss in one loop
E = e*v // energy loss in core in one cycle
P = E*f // Power loss
printf("\n Power loss due to hysteresis is %d W",P)
