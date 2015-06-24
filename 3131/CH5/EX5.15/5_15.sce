clear all; clc;
disp("Ex 5_15")
disp("Free body diagram is as shown in fig 5-30b")

//Initilization of variables
F=[0,-1000,0] //matrix notation 
T_C=[0.707,0,-0.707] //matrix notation
T_D=[-3/9,6/9,-6/9] //matrix notation

//Calculations
//Applying summation of forces along each axes and equating them to zero 
//Applying moment about point A and equating it to zero 
//We get five equation s and we solve for each component
//Solving by matrix method to obtain solution
A=[1,0,0,0.707,-3/9;0,1,0,0,6/9;0,0,1,-0.707,-6/9;0,0,0,0,-4;0,0,0,4.24,-2]
B=[0;1000;0;-6000;0]
C=inv(A)
D=C*B 
Ax1=D(1)
Ay=D(2)
Az=D(3)
Tc=D(4)
Td=D(5)
Ax=-1*Ax1
//Result
printf('\n The values are \n')
printf('\n Ax=%0.0f \n Ay=%0.0f \n Az=%0.0f \n Tc=%0.0f \n Td=%0.0f \n All values are in N',Ax,Ay,Az,Tc,Td)
