

// Display mode
mode(0);

// Display warning for floating point exception
ieee(1);

clc;
disp("Principles of Heat Transfer, 7th Ed. Frank Kreith et. al Chapter - 1 Example # 1.2 ")

//Thermal conductivity of window glass in W/m-K
k = 0.81;
//Height of the glass in m
h = 1;
//Width of the glass in m
w = 0.5;
//Thickness of the glass in m
t = 0.005;
//Outside temperature in C
T2 = 24;
//Inside temperature in C
T1 = 24.5;

//Assume that steady state exists and that the temperature is uniform over the inner and outer surfaces

//Cross sectional area in m2
A = h*w;

disp("Thermal resistance to conduction in K/W is")
//Thermal resistance to conduction in K/W
R = t/(k*A)

//The rate of heat loss from the interior to the exterior surface is
//obtained by dividing temperature difference from the thermal resistence

disp("Heat loss in W from the window glass is")
//Heat loss in W
q = (T1-T2)/R
