//Example 2.4  On Stagnation Point

// Initialisation of variables
h = 50; 
v = 12*5280/3600;     //Speed in feet/sec    
w = 62.4;

// Calculations
Po = w*h;
Ps = Po + (1/2)*w*v^2/32.2;

//Results 
disp(Ps/144, "Impact Pressure on nose (lb/sq-in):");

