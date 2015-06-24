// Initilization of variables
m_a=1 // kg // mass of the ball A
v_a=2 // m/s // velocity of ball A
m_b=2 // kg // mass of ball B
v_b=0 // m/s // ball B at rest
e=1/2 // coefficient of restitution
// Calculations
// Solving eqn's 1 & 2 using matrix for v'_a & v'_b,
A=[1 2;-1 1]
B=[2;1]
C=inv(A)*B
// Results
clc
printf('The velocity of ball A after impact is %f m/s \n',C(1))
printf('The velocity of ball B after impact is %f m/s \n',C(2))
