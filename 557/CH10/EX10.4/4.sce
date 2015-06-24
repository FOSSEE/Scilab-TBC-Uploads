clc; funcprot(0); //Example 10.4

//Initializing the variables
w = 4.5;
d = 1.2 ;
C = 49;
i = 1/800;

//Calculations
A = d*w;
P = 2*d + w;
m = A/P;
v = C*sqrt(m*i);
Q = v*A;

disp(Q,"Discharge (m3/s):",v, "Mean Velocity (m/s):");