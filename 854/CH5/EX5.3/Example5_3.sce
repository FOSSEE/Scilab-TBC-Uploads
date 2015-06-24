//clear//
//Caption: Program to determine the equation of the streamline passing through any point P
//Example5.3
//page 128
clc;
x = sym('x');
y = sym('y');
z = sym('z');
C1 = integ(1/y,y)+integ(1/x,x);
disp(C1,'C1 = ')
C2 = exp(C1);
disp(C2,'The Stream line Equation C2 = ')
C2 = limit(C2,x,2);
C2 = limit(C2,y,-1);
disp(C2,'The value of constant in the streamline equation passing through the point P is C2=')
//Result
//C1 = log(y)+log(x)   
//The Stream line Equation C2 = x*y   
//The value of constant in the streamline equation passing through the point P is C2 = -2 
