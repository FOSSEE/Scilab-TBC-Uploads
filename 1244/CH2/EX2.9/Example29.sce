

// Display mode
mode(0);

// Display warning for floating point exception
ieee(1);

clc;
disp("Principles of Heat Transfer, 7th Ed. Frank Kreith et. al Chapter - 2 Example # 2.9 ")

//Thermal conductivity in W/mC
k = 1.04;
//For square length and breadth are equal and are in m
D = 0.5;
//Area in m2
A = D*D;
//Thickness in m
L = 0.1;
//Inside temperature in degree C
Ti = 500;

//Outside temperature in degree C
To = 50;
//Shape factor for walls
Sw = A/L;
//Shape factor for corners
Sc = 0.15*L;
//Shape factor for edges
Se = 0.54*D;

//There are 6 wall sections, 12 edges, and 8 corners, so that the total
//shape factor is
S = 6*Sw+12*Se+8*Sc;

disp("Heat flow in W is")
//Heat flow in W 
q = (k*S)*(Ti-To)
