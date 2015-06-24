clear all; clc;
disp("Ex 6_15")

//Calculations
//Applying summation of forces along X and Y axes for both the segments BC and AB and equating them to zero 
//Applying moment about point B for Segment BC and about point A for segment AB and equating it to zero 
//We get six equations and we solve for each component
//Solving by matrix method to obtain solution
A=[0,1,0,0,0,0;0,0,0,0,2,0;0,0,0,1,1,0;1,1,0,0,0,0;0,0,0,-4,0,1;0,0,1,-1,0,0]
B=[0;8;8;6;16;8]
C=inv(A)
D=C*B 
Ax=D(1)
Bx=D(2)
Ay=D(3)
By=D(4)
Cy=D(5)
MA=D(6)

//Result
printf('\n The values are \n')
printf('\n Ax=%0.0f kN\n Bx=%0.0f \n Ay=%0.0f kN\n By=%0.0f kN\n Cy=%0.0f kN\n MA=%0.0f kN.m\n',Ax,Bx,Ay,By,Cy,MA)
