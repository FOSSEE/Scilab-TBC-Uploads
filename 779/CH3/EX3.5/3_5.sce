ad = 5.5e-04; // Area of indicator diagram
ld = 0.06; // Length of diagram
k = 147e06; // Spring constant in MPa/m
w = 150; // Speed of engine
L = 1.2 ; // Stroke of piston
d = 0.8; // Diameter of the cylinder in m
A = (%pi/4)*(0.8^2); // Area of cylinder
Pm = (ad/ld)*k; // Effective pressure
W1 = Pm*L*A*w; // Work done in 1 minute
W = (12*W1)/60; // The rate of work transfer gas to the piston in MJ/s
disp("kW",W/1000,"The rate of work transfer gas to the piston is")