clear all; clc;
disp("Ex 6_2")

//Calculations
// At joint C:
//Applying summation of forces along all axes and equating them to zero  
//We get two equations and we solve for each component
//Solving by matrix method to obtain solution
disp("At joint C:")
a1=30
a=a1*%pi/180
b1=45
b=b1*%pi/180
A=[-cos(a),sin(b);sin(a),-cos(b)]
B=[0;-1.5]
C=inv(A)
D=C*B 
F_CD=D(1)
F_CB=D(2)

//Result
printf('\n The values are ')
printf('\n F_CD=%0.2f \n F_CB=%0.2f \n All values are in kN',F_CD, F_CB)

disp("At joint D:")
F_DA=4.10
printf('\n F_DA = %0.2f kN (T)', F_DA)
F_DB=4.10
printf('\n F_DB = %0.2f kN (T)', F_DB)
