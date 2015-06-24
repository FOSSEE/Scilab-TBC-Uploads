// Initilization of Variables
r=5 // cm // radius of the roller
AB=0.1 // m
v_a=3 // m/s // velocity at A
v_b=2 // m/s // velocity at B
// Calculations
// Solving eqn's 1 & 2 using matrix for IA & IB we get,
A=[-2 3;1 1]
B=[0;AB]
C=inv(A)*B
d1=C(2)*10^2 // cm // assume d1 for case 1
// Similary solving eqn's 3 & 4 again for IA & IB we get,
P=[-v_b v_a;1 -1]
Q=[0;AB]
R=inv(P)*Q
d2=R(2)*10^2 // cm // assume d2 for case 2
// Results
clc
printf('The distance d when the bars move in the opposite directions are %f cm \n',d1)
printf('The distance d when the bars move in the same directions are %f cm \n',d2)
