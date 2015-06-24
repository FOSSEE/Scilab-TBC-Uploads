// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Introduction to heat transfer by S.K.Som, Chapter 3, Example 3")
//internodal distance in x direction in m
deltax = 1/4;
//internodal distance in y direction in m
deltay = 1/4;
//Air temperature in degree K
Tinfinity = 400;
//Heat transfer coefficient in W/(m^2*K)
h = 10;
//T1, T2, T3, T4, T5, T6, T7, T8 are nodal temperatures in degree K.
//T is the temperature matrix and is transpose of [T1 T2 T3 T4 T5 T6 T7 T8]
//using Nodal Equations, we have Coefficeint Matrix A as
A = [-4,1,0,0,1,0,0,0;
     1,-4,1,0,0,1,0,0;
     0,1,-4,1,0,0,1,0;
     2,0,0,0,-4,1,0,0;
     0,2,0,0,1,-4,1,0;
     0,0,2,0,0,1,-4,1;
     0,0,2,-6,0,0,0,1;
     0,0,0,2,0,0,2,-6];
//Coefficient matrix B
B = [-1200;
     -600;
     -600;
     -600;
     0;
     0;
     -1400;
     -800];
//Therefore the temperature matrix is
T = (A^(-1))*B;
//Temperature at nodal points in degree K
disp("Temperatures at nodal points in degree K")
disp("T1 in degree K")
T1 = T(1)
disp("T2 in degree K")
T2 = T(2)
disp("T3 in degree K")
T3 = T(3)
disp("T4 in degree K")
T4 = T(4)
disp("T5 in degree K")
T5 = T(5)
disp("T6 in degree K")
T6 = T(6)
disp("T7 in degree K")
T7 = T(7)
disp("T8 in degree K")
T8 = T(8)
