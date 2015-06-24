

// Display mode
mode(0);

// Display warning for floating point exception
ieee(1);

clc;
disp("Principles of Heat Transfer, 7th Ed. Frank Kreith et. al Chapter - 3 Example # 3.7 ")

// Heat Transfer coefficient is given in W/m2-K as:
h = 200;
// Radius of cylinder in m is given as:
R0 = 0.05;
// Thermal conductivity in W/m-K is given as:
k = 20;
// Thermal diffusivityt in m2/sec is given as:
alpha = 10^(-5);
// Therefore the biot number is given as:
Bi = (h*R0)/k;

// Ambient water bath temperature in C is given as:
Tinfinity = 0;
// Initial temperature of centre line is given as:
T0 = 500;
// Final Temperature of centre line is given as:
Tr = 100;

// Therefore the value of (Tr-Tinfinity)/(T0-Tinfinity) is:
value = (Tr-Tinfinity)/(T0-Tinfinity); //Required value

// Using above value and biot number, from Figure 2.43 (a) on page 137, we have
// alpha*t/(R0*R0)=1.8

disp("Therefore from chart solution, time taken in seconds shall be")
//Time taken in seconds
t = ((1.8*R0)*R0)/alpha

// Proceeding to the numerical solution
//Because of symmetry we need to consider only one quarter of the circular cross section
//The vertical and horizontal radii are then adiabatic surfaces.

//We will have a total of nine types of control volume
//Each of the control volume energy balance equations can be solved

//The coefficient on Tfor control volume type 7 is:
//(dx*dx/(alpha*dt)) -2 -2*h*dx/5
//and for it to be positive

// value of t we use in the numerical solution must be smaller than this
// maximum value. The calculation is continued until the temperature for the control vol-ume nearest the cylinder axis is less than 100°C

disp("And using numerical solution the time in seconds comes out to be")
//Time taken in seconds
tfinal = 431
disp("which is about 4% less than the chart solution of 450 s.")
