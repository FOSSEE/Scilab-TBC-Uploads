// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Introduction to heat transfer by S.K.Som, Chapter 4, Example 14")
//Nodal distance Deltax in m
deltax = 0.1;
//Time in seconds
t = 25*60;
//timestep deltaT in seconds
deltaT = 500;
//Number of increment
n = t/deltaT;
//Temperature raised in °C
To = 580;
//Using Eq. 4.114 for interior grid points, table 4.8 for exterior node
//Using Eq. 4.125a to 4.125f are written in matrix form
//Coefficient matrix A is
A = [-3,1,0,0,0,0;
     1,-3,1,0,0,0;
     0,1,-3,1,0,0;
     0,0,1,-3,1,0;
     0,0,0,1,-3,1;
     0,0,0,0,2,-3];
//Coefficient matrix B is
B = [-600;
     -20;
     -20;
     -20;
     -20;
     -20];
//Temperature matrix is transpose of [T2 T3 T4 T5 T6 T7] where
//T2 to T7 are temperature in °C
//From Eq. 4.126
//Temperature distribution after one time step
T = (A^(-1))*B;
//For second timestep, coefficient matrix B gets modeified as
B(1) = B(1)-T(1);
for i = 2:6
  B = mtlb_i(B,i,-T(i));
end;
//Temperature distribution after second time step
T = (A^(-1))*B;
//For third timestep, coefficient matrix B gets modeified as
B = mtlb_i(B,1,-600-T(1));
for i = 2:6
  B = mtlb_i(B,i,-T(i));
end;
//Temperature distribution after second time step
T = (A^(-1))*B;
//Final temperature distribution including face in °C
//Face temperature in °C
Tf(1,1) = To;
//Interior points temperature in °C
//i is the looping parameter
for i = 2:7
  Tf(1,i) = T(i-1);
end;
//Assigning final temperature to initial temperature matrix
for i = 1:7
  T(i) = Tf(i);
end;
disp("Temperature distribution after 25 mins in °C")
T
