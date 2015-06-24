clc; funcprot(0); //Example 22.2

//Initializing the variables
D = 0.1;
t = 15*10^-3;
Q = 8.5/3600;
N = 750/60;
B2 = 25; // Beta 2 ind degrees
g = 9.81;
z = 16;

//Calculations
A = %pi*D*t;
V_f2 = Q/A;
U2 = %pi*N*D;
V_w2 = U2 - V_f2*cotd(B2);
Hth = U2*V_w2/g;
Sf = 1 - %pi*sind(B2)/(z*(1-(V_f2/U2)*cotd(B2)));
H = Sf*Hth;

disp(H, "Part (b) - Head developed (m): ",Hth, "Part (a) - Head developed (m): ");