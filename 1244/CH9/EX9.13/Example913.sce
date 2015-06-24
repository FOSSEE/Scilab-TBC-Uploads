

// Display mode
mode(0);

// Display warning for floating point exception
ieee(1);

clc;
disp("Principles of Heat Transfer, 7th Ed. Frank Kreith et. al Chapter - 9 Example # 9.13 ")

// Provide all given inputs and constants of the problem
SIGMA = 0.0000000567;// Stefan-Boltzmann constant (W m^2 K^4)

//all F(I,J) are shape factor
F(1,1) = 0;
F(1,2) = 0.853;
F(1,3) = 0.147;
F(2,1) = 0.372;
F(2,2) = 0.498;
F(2,3) = 0.13;
F(3,1) = 0.333;
F(3,2) = 0.667;
F(3,3) = 0;

//Area(1)=R1^2*pi in m2
AR(1,1) = 9*%pi;

//ESP are total hemispheric emissivity in W/m2
ESP(1,1) = 0.6;
ESP(1,3) = 0.9;

//Heat exchange in W
Q1 = 300000;

//Temperature in degree K
T(1,3) = 600;

//EB blackbody emissive powers in W/m2
EB(1,3) = SIGMA*(T(3)^4);

// Evaluate elements of coefficient matrix
A(1,1) = 1-F(1,1);
A(1,2) = -F(1,2);
A(1,3) = -F(1,3);
A(2,1) = -F(2,1);
A(2,2) = 1-F(2,2);
A(2,3) = -F(2,3);
A(3,1) = 0;
A(3,2) = 0;
A(3,3) = 1;

// Evaluate elements of right hand side matrix
B(1,1) = Q1/AR(1);
B(1,2) = 0;
B(3) = EB(3);

// solve the system of equations for X
X = inv(A)*B';

//Required temperature in degree K
T(1) = ((X(1)+(Q1*(1-ESP(1)))/(AR(1)*ESP(1)))/SIGMA)^0.25;
//solution for temperatures
disp("Temperature of surface 1 for the cone in degree K")
T1 = T(1)//Value for the required temperature in K
