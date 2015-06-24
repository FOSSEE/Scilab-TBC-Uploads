clear all; clc;
disp("Ex 6_18")
disp("Free body diagram is shown in figure 6-31b")
//Calculations
//Applying summation of forces along Y axis and equating them to zero
//We get three equations and we solve for each component
//Solving by matrix method to obtain solution
A=[3,0,0;-2,1,0;-2,-1,1]
B=[600;0;0]
C=inv(A)
D=C*B 
P=D(1)
T=D(2)
R=D(3)

//Result
printf('\n The values are \n')
printf('\n P=%0.0f N\n T=%0.0f N\n R=%0.0f N',P,T,R)
