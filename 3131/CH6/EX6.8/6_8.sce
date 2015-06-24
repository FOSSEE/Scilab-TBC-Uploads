clear all; clc;
disp("Ex 6_8")

//Initilization of variables
F_AE=[0.577,0.577,-0.577] //matrix notation
P=[0,-4,0]// in kN

//At joint A:
//Calculations
//Applying summation of forces along all axes and equating them to zero  
//We get three equations and we solve for each component
//Solving by matrix method to obtain solution
A=[0.577,0,0;0.577,0,1;-0.577,-1,0]
B=[0;4;0]
C=inv(A)
D=C*B 
F_AE=D(1)
F_AC=D(2)
F_AB=D(3)

//Result
printf('\n The values are \n')
printf('\n F_AE=%0.0f \n F_AC=%0.0f \n F_AB=%0.0f (T)\n All values are in kN',F_AE,F_AC,F_AB)

//At joint B:
//Calculations
//Applying summation of forces along all axes and equating them to zero  
//We get three equations and we solve for each component
//Solving by matrix method to obtain solution
a1=45
a=a1*%pi/180
A=[-cos(a),0.707,0;sin(a),0,0;0,-0.707,1]
B=[0;4;-2]
C=inv(A)
D=C*B 
RB=D(1)
F_BE=D(2)
F_BD=D(3)

//Result
printf('\n The values are \n')
printf('\n RB=%0.2f (T)\n F_BE=%0.2f (T)\n F_BD=%0.0f (C)\n All values are in kN',RB,F_BE,F_BD)
disp(" ")
disp("F_DE = F_DC = F_CE = 0")
