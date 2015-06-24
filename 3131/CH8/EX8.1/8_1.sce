clear all; clc;
disp("Ex 8_1")
p=80//force in N
a=30*%pi/180
//Calculations
//Applying equations of equilibrium
//We get three equations and we solve for each component
//Solving by matrix method to obtain solution
A=[-1,0,0;0,1,0;0,0,((80*sin(a))+196.2)]//Putting the value of NC in equation 3
B=[-80*cos(a);((80*sin(a))+196.2);(80*cos(a)*0.2)-(80*sin(a)*0.4)]
C=inv(A)
D=C*B 
F=D(1)
NC=D(2)
x=D(3)
y=x*1000
//Result
printf('\n The values are \n')
printf('\n F=%0.1f N\n NC=%0.0f N\n x=%0.5f m = %0.2f mm',F,NC,x,y)
