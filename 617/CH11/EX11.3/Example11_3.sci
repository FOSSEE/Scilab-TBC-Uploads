clc()
// To calculate he net radiant interchange between floor of a furnace and the wall

x=6;                                    // length of wall in ft
y=12;                                   // breadth of wall in ft
z=18;                                   // height of wall in ft
A1=x*y;
s=0.174;                                // Stephan Boltzman's constant
T1=1000;                                // Temperature of floor in degF
T2=500;                                 // Temperature of wall in degF
Y=y/x;                                  // Ratios
Z=z/x;                                  

// Seeing the graph, F12 could be found out
F12=0.165;
q12=s*F12*A1*((((T1+460)/100)^4)-((T2+460)/100)^4);  // Radiant interchange
printf("The net radiant interchange between two bodies of unit area is %d Btu/hr-ft^2",q12);
