// Initilization of variables
v_a=600 // m/s // velocity of the bullet before impact
v_b=0 // m/s // velocity of the block before impact
w_b=0.25 // N // weight of the bullet
w_wb=50 // N // weight of wodden block
mu=0.5 // coefficient of friction between the floor and the block
g=9.81 // m/s^2 // acc due to gravity
// Calculations
m_a=w_b/g // kg // mass of the bullet
m_b=w_wb/g // kg // mass of the block
// Let the common velocity be v_c which is given by eq'n (Principle of conservation of momentum)
v_c=(w_b*v_a)/(w_wb+w_b) // m/s
// Let the distance through which the block is displaced be s, Then s is given by eq'n
s=v_c^2/(2*g*mu) // m
// Results
clc
printf('The distance through which the block is displaced from its initial position is %f m \n',s)
