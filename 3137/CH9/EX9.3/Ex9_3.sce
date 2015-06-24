//Initilization of variables
m=70 //kg
g=9.81 //m/s^2
theta=20 //degrees
//Calculations
//Solving by martix method
//Taking sum along vertical and horizontal direction and equating them to zero
A=[sind(theta) 1 0;-cosd(theta) 0 1;0 -1/4 1]
//RHS matrix
R=[m*g;0;0]
ans1=inv(A)*R //force vector N
//Calculation part 2
//Similar solution by matrix method
//Taking moment about point O and summing forces in horizontal and vertical direction and equating all to zero
B=[4*cosd(theta) 0 0;-cosd(theta) 1 0;sind(theta) 0 1]
//RHS matrix
J=[m*g*1.5;0;m*g]
ans2=inv(B)*J //force Vector N
//Result
clc
printf('The value of P in first case is %iN and that in second case is %iN',ans1(1),ans2(1))
 
