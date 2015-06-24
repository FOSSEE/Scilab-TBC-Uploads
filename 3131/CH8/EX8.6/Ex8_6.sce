clear all; clc;
disp("Ex 8_6")
a=20*%pi/180
//Calculations
//Applying equations of equilibrium and friction
//We get four equations and we solve for each component
//Solving by matrix method to obtain solution
A=[-1,1,0,0;0,0,1,-1;-400,0,0,400;0,-0.4,0,1]
B=[981*sin(a);981*cos(a);0;0]
C=inv(A)
D=C*B 
FA=D(1)
P=D(2)
NA=D(3)
FB=D(4)
//Result
printf('\n The values are \n')
printf('\n NA = %0.0f N \n FA = %0.0f N \n FB = %0.0f N \n P = %0.0f N',NA,FA,FB,P)
// Slipping occurs at A, the other case of motion will occur
//Applying equations of equilibrium and friction
//We get four equations and we solve for each component
//Solving by matrix method to obtain solution
A=[-1,1,0,0;0,0,1,-1;-400,0,0,400;1,0,-0.15,0]
B=[981*sin(a);981*cos(a);0;0]
C=inv(A)
D=C*B 
FA1=D(1)
P1=D(2)
NA1=D(3)
FB1=D(4)
//Result
printf('\n\n The values for piles sliding up incline are')
printf('\n\n NA = %0.0f N \n FA = %0.0f N \n FB = %0.0f N \n P = %0.0f N',NA1,FA1,FB1,P1)
