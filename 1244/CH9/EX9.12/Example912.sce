

// Display mode
mode(0);

// Display warning for floating point exception
ieee(1);

clc;
disp("Principles of Heat Transfer, 7th Ed. Frank Kreith et. al Chapter - 9 Example # 9.12 ")

// Provide all given inputs and constants of the problem

// Stefan–Boltzmann constant (W/m^2/K^4)
SIGMA = 0.0000000567;

//Area(1)=R1^2*pi in m2
AR(1,1) = 9*%pi;

// The physical parameters, e.g., shape factor and emissivity, are evaluated.

//All F(i,j) are shape factors.
F(1,1) = 0;
F(1,2) = 0.853;
F(1,3) = 0.147;
F(2,1) = 0.372;
F(2,2) = 0.498;
F(2,3) = 0.13;
F(3,1) = 0.333;
F(3,2) = 0.667;
F(3,3) = 0;

//ESP are emissivity given in the problem
ESP(1,1) = 0.6;
ESP(1,3) = 0.9;

//Temperature in degree K
T(1,1) = 1200;
//Temperature in degree K
T(1,3) = 600;

//Emissive Power of blackbody in W/m2
EB(1,1) = SIGMA*(T(1)^4);
//Emissive Power of blackbody in W/m2
EB(1,3) = SIGMA*(T(3)^4);

// The values of the elements of the coefficient matrix A in the equation
//[A][X]=[B] are specified
A(1,1) = 1-F(1,1)+ESP(1)/(1-ESP(1));
A(1,2) = -F(1,2);
A(1,3) = -F(1,3);
A(2,1) = -F(2,1);
A(2,2) = 1-F(2,2);
A(2,3) = -F(2,3);
A(3,1) = -F(3,1);
A(3,2) = -F(3,2);
A(3,3) = 1-F(3,3)+ESP(3)/(1-ESP(3));

// The values of the right-hand side vector B are specified.
B(1,1) = (EB(1)*ESP(1))/(1-ESP(1));
B(1,2) = 0;
B(3) = (EB(3)*ESP(3))/(1-ESP(3));

// The inversion routine is used to solve for X
disp("Net radiative exchange between the top and bottom surface in W")
//Net radiative exchange between the top and bottom surface in W
X = inv(A)*B'// solutions for J
