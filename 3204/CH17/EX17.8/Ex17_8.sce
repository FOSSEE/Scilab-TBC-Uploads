// Initilization of variables
m=2 // kg // mass of the particle
v_0=20 // m/s // speed of rotation of the mass attached to the string
r_0=1 // m // radius of the circle along which the particle is rotated
r_1=r_0/2 // m
// Calculations
// here, equating (H_0)_1=(H_0)_2 i.e  (m*v_0)*r_0=(m*v_1)*r_1 (here, r_1=r_0/2). On solving we get v_1 as,
v_1=2*v_0 // m/s
// Tension is given by eq'n,
T=(m*v_1^2)/r_1 // N
// Results
clc
printf('The new speed of the particle is %f m/s \n',v_1)
printf('The tension in the string is %f N \n',T)
