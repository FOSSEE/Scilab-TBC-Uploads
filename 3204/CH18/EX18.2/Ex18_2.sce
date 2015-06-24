// Initilization of variables
m_a=2 // kg // mass of ball A
m_b=6 // kg // mass of ball B
m_c=12 // kg // mass of ball C
v_a=12 // m/s // velocity of ball A
v_b=4 // m/s // velocity of ball B
v_c=2 // m/s // velocity of ball C
e=1 // coefficient of restitution for perfectly elastic body
// Calculations
// (A)
// Solving eq'n 1 & 2 using matrix for v'_a & v'_b,
A=[2 6;-1 1]
B=[48;8]
C=inv(A)*B
// Calculations
// (B)
// Solving eq'ns 3 & 4 simultaneously using matrix for v'_b & v'_c
P=[1 2;-1 1]
Q=[12;6]
R=inv(P)*Q
// Results (A&B)
clc
printf('The velocity of ball A after impact on ball B is %f m/s \n',C(1)) // here the ball of mass 2 kg is bought to rest
printf('The velocity of ball B after getting impacted by ball A is %f m/s \n',C(2))
printf('The final velocity of ball B is %f m/s \n',R(1)) // here the ball of mass 6 kg is bought to rest
printf('The velocity of ball C after getting impacted by ball B is %f m/s \n',R(2))
