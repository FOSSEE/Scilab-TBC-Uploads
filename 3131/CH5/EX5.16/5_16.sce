clear all; clc;
disp("Ex 5_16")
disp("Free body diagram is as shown in fig 5-30b")

//Initilization of variables
F=[0,0,-200] //matrix notation 

//Calculations
//Applying summation of forces along all axes and equating them to zero 
//Applying moment about point X,Y,Z and equating it to zero 
//We get six equations and we solve for each component
//Solving by matrix method to obtain solution
A=[1,0,0,0,1;0,1,0,1,0;0,0,1,0,0;0,0,0,2,0;0,0,0,1,-2]
B=[0;0;200;200;0]
C=inv(A)
D=C*B 
Ax=D(1)
Ay=D(2)
Az=D(3)
Td=D(4)
Te=D(5)

//Result
printf('\n The values are \n')
printf('\n Ax=%0.0f \n Ay=%0.0f \n Az=%0.0f \n Td=%0.0f \n Te=%0.0f \n All values are in N',Ax,Ay,Az,Td,Te)
