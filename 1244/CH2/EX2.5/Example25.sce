

// Display mode
mode(0);

// Display warning for floating point exception
ieee(1);

clc;
disp("Principles of Heat Transfer, 7th Ed. Frank Kreith et. al Chapter - 2 Example # 2.5 ")

//Heat generation rate in W/m3
qg = 75000000;
//Outer radius of rods in m
ro = 0.025;
//Temperature of water in degree C
Twater = 120;
//Thermal cinductivity in W/mk
k = 29.5
//Heat transfer coefficient in W/m2K
hco = 55000;

//Since rate of flow through the surface of the rod equals the rate of internal heat generation
//and
//The rate of heat flow by conduction at the outer surface equals the rate
//of heat flow by convection from the surface to the water

//Surface Temperature in degree C
T0 = (qg*ro)/(2*hco)+Twater;

disp("Maximum temperature in degree C")
//Maximum temperature in degree C
Tmax = T0+((qg*ro)*ro)/(4*k)
