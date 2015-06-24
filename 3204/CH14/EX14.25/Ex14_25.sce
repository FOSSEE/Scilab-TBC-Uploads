// Initilization of variables
P=30 // N // weight on pulley A
Q=20 // N // weight on pulley B
R=10 // N // weight on puey B
g=9.81 // m/s^2 // acc due to gravity
// Calculations
// Solving eqn's 6 & 7 using matrix for a & a_1, we get
A=[70 -40;-10 30]
B=[10;-10]
C=inv(A)*B
// Acceleration of P is given as,
P=C(1) // m/s^2
// Acceleration of Q is given as,
Q=C(2)-C(1) // m/s^2
// Acceleration of R is given as,
R=-(C(2)+C(1)) // m/s^2 // as R is taken to be +ve
// Results
clc
printf('The acceleration of P is %f g \n',P)
printf('The acceleration of Q is %f g \n',Q)
printf('The acceleration of R is %f g \n',R)
// Here the -ve sign indicates deceleration or backward/downward acceleation.
