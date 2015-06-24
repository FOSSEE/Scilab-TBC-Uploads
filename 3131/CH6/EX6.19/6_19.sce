clear all; clc;
disp("Ex 6_19")
disp("Free body diagram is shown in figure 6-32b")
//Calculations

//Applying equations of equlibrium to pulley B
//We get two equations and we solve for each component
//Solving by matrix method to obtain solution
a=45*%pi/180
A=[1,0;0,1]
B=[490.5*cos(a);(490.5*sin(a))+490.5]
C=inv(A)
D=C*B 
Bx=D(1)
By=D(2)

//Result
printf('\n The values are \n')
printf('\n Bx=%0.1f N\n By=%0.1f N\n',Bx,By)

//For the equilibrium of the pin in X and Y directions
E=[4/5,0;0,1]
F=[(By+490.5);Bx+((3/5)*1660)]
G=inv(E)
H=G*F 
F_CB=H(1)
F_AB=H(2)

//Result
printf('\n The values are \n')
printf('\n F_CB=%0.0f N\n F_AB=%0.0f N\n',F_CB,F_AB)
