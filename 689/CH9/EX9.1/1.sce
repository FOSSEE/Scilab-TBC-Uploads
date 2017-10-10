clc; funcprot(0);
//Example 9.1 Lift due to Circulation

// Initialisation of variables
D = 4;
L = 12;
V = 40*1.467;
rho = 0.002378;
W = 100/60;        // Revolution per second

// Calculations
R =D/2;
Vt = 2*%pi*R*W;
T = 2*%pi*R*Vt;
Lift = rho*T*V;
L_total = Lift*L

//Results 
disp(L_total,"Total lifting force (lb):");
