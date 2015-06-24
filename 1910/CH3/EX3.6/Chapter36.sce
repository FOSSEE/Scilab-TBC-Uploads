// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Introduction to heat transfer by S.K.Som, Chapter 3, Example 6")
//Thermal conductivity of concrete in W/mK
k = 2;
//Length in m
L = 0.2;
//Breadth in m
b = 0.2;
//Depth in m
d = 0.2;
//Temperature of hot gas in chimney in degree C
Tg = 400;
//Air temperature in degree C
Tinfinity = 20;
//internodal distance in x direction in m
deltax = 0.1;
//internodal distance in y direction in m
deltay = 0.1;
//Heat transfer coefficient in W/(m^2*K)
h = 20;
//T1, T2, T3, T4, T5, T6, T7, T8, T9 are nodal temperatures in degree K.
//T is the temperature matrix and is transpose of [T1 T2 T3 T4 T5 T6 T7 T8 T9]
//using Nodal Equations, we have Coefficeint Matrix A as
A = [1,0,-4,2,0,1,0,0,0;
     0,1,1,-4,1,0,1,0,0;
     0,0,0,2,-4,0,0,2,0;
     -3,1,1,0,0,0,0,0,0;
     0,0,1,0,0,-3,1,0,0;
     0,0,0,2,0,1,-6,1,0;
     0,0,0,0,2,0,1,-6,1;
     0,0,0,0,0,0,0,1,-2;
     1,-4,0,2,0,0,0,0,0];
//Coefficient matrix B
B = [0;
     0;
     0;
     -400;
     -20;
     -40;
     -40;
     -20;
     -400];
//Therefore the temperature matrix is
T = (A^(-1))*B;
//Temperature at nodal points in degree C
disp("Temperatures at nodal points in degree C")
disp("T1 in degree C")
T1 = T(1)
disp("T2 in degree C")
T2 = T(2)
disp("T3 in degree C")
T3 = T(3)
disp("T4 in degree C")
T4 = T(4)
disp("T5 in degree C")
T5 = T(5)
disp("T6 in degree C")
T6 = T(6)
disp("T7 in degree C")
T7 = T(7)
disp("T8 in degree C")
T8 = T(8)
disp("T9 in degree C")
T9 = T(9)
