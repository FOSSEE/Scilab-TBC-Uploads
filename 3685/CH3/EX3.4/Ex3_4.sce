clc
// Given that
ad = 5.5e-04 // Area of indicator diagram in m^2
ld = 0.06 // Length of diagram in m
k = 147 // Spring value in MPa/m
w = 150 // Speed of engine in revolution per minute
L = 1.2 // Stroke of piston in m
d = 0.8 // Diameter of the cylinder in m
A = (%pi/4)*(0.8^2) // Area of cylinder
Pm = (ad/ld)*k // Effective pressure in MPa
W1 = Pm*L*A*w // Work done in 1 minute MJ
W = (12*W1)/60 // The rate of work transfer gas to the piston in MJ/s

printf("\n Example 3.4")
printf("\n The rate of work transfer from gas to the piston is %d kW",W*1e3)
//The answers vary due to round off error

