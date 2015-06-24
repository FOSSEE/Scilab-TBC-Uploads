// Initilization of variables
P=100 //N // force acting at 0.2 m from A
Q=200 //N // force acting at any distance x from B
l=1 //m // length of the bar
theta=45 //degree //angle made by the normal reaction at A&B with horizontal
// Calculations
// solving eqn's 1 & 2 using matrix for Ra & Rb,
A=[1 -1;sind(theta) sind(theta)]
B=[0;(P+Q)]
C=inv(A)*B
// Now take moment about B
x=((C(1)*l*sind(theta))-(P*(l-0.2)))/200 //m // here 0.2 is the distance where 100 N load lies from A
// Results
clc
printf('The minimum value of x at which the load Q=200 N may be applied before slipping impends is %f m \n',x)
