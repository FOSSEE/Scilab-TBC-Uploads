//Example 2.5  On Stagnation Point

// Initialisation of variables
h = 50; 
v = 100*5280/3600;     //Speed in feet/sec    
rho_0 = 0.002378;
rho_10000 = 0.001756;

// Calculations
Po = w*h;
Ps_Po1 = (1/2)*rho_0*v^2;
Ps_Po2 = (1/2)*rho_10000*v^2;
V = 0.682*sqrt(Ps_Po2/(rho_0/2));

//Results 
disp(V, "Part(c) Reading of airspeed indicator (mph):", Ps_Po2,"Part (b) difference between impact and static pressure  at altitude 10000 ft(lb/sq-ft):", Ps_Po1,"Part (a) difference between impact and static pressure at sea level (lb/sq-ft):");

