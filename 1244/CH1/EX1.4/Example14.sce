

// Display mode
mode(0);

// Display warning for floating point exception
ieee(1);

clc;
disp("Principles of Heat Transfer, 7th Ed. Frank Kreith et. al Chapter - 1 Example # 1.4 ")

//Diameter of rod in m
d = 0.02;
// Emissivity and temperautre of rod in K
epsilon = 0.9;
T1 = 1000;
//Temperature of walls of furnace
T2 = 800;

//Assuming steady state has been reached.
//Since the walls of the furnace completely enclose the heating rod, all the radiant energy emitted by the surface of the rod is intercepted by the furnace walls

//From eq. 1.17, net heat loss can be given

disp("Net heat loss per unit length considering 1m length in W")
//Area in m2
A = (%pi*d)*1;
//Constant sigma in W/m2-K4
sigma = 0.0000000567;
//Net heat loss per unit length considering 1m length in W
q = ((A*sigma)*epsilon)*(T1^4-T2^4)

//From eq. 1.21 radiation heat transfer coefficient in W/m2-K is
disp("Radiation heat transfer coefficient in W/m2-K is")
//Radiation heat transfer coefficient in W/m2-K 
hr = ((epsilon*sigma)*(T1^4-T2^4))/(T1-T2)
