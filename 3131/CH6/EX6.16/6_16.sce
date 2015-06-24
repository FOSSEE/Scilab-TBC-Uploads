clear all; clc;
disp("Ex 6_16")
//Calculations
//Applying summation of forces along X and Y axes for the entire frame and the member CEF equating them to zero 
//Applying moment about point A for the entire frame and about point C for member CEF and equating it to zero 
//We get six equations and we solve for each component
//Solving by matrix method to obtain solution
a=45*%pi/180
A=[0,0,0,0,0,2.8;1,0,0,0,0,0;0,1,0,0,0,0;0,0,-sin(a)*1.6,0,0,0;0,0,0,-1,0,0;0,0,0,0,1,0]
B=[981*2;700.7;981;981*2;-1734.2*cos(a);(-1734.2*sin(a))+981]
C=inv(A)
D=C*B 
Ax=D(1)
Ay=D(2)
FB=D(3)
Cx=D(4)
Cy=D(5)
Dx=D(6)

//Result
printf('\n The values are \n')
printf('\n Ax=%0.1f N\n Ay=%0.0f N \n FB=%0.1f N\n Cx=%0.0f N\n Cy=%0.0f N\n Dx=%0.1f N\n',Ax,Ay,FB,Cx,Cy,Dx)
