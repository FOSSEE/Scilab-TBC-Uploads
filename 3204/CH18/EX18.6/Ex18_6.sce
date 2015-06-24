// Initilization of variables
e=0.8 // coefficient of restitution
g=9.81 // m/s^2 // acc due to gravity
// Calcuations
// Squaring eqn's 1 &2 and Solving eqn's 1 & 2 using matrix for the value of h
A=[-1 (2*g);-1 -(1.28*g)]
B=[0.945^2;(-0.4*9.81)]
C=inv(A)*B // m
// Results
clc
printf('The height from which the ball A should be released is %f m \n',C(2))
// The answer given in the book i.e 0.104 is wrong.
