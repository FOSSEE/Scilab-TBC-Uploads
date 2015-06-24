// Initilization of variables
y=3.6 // m // height of the wall
x_1=4.8 // m // position of the boy w.r.t the wall
x_2=3.6 // m // distance from the wall where the ball hits the ground
g=9.81 // m/s^2 // acc due to gravity
// Calculations
// The range of the projectile is r, given as,
r=x_1+x_2 // m
// Let the angle of the projection be alpha, which is derived and given as,
alpha=atand((y)/(x_1-(x_1^2/r))) // degree
// Now substuting the value of alpha in eq'n 3 we get the least velocity (v_o) as;
v_o=sqrt((g*r)/(sind(2*alpha))) // m/s
// Results
clc
printf('The least velocity with which the ball can be thrown is %f m/s \n',v_o)
printf('The angle of projection for the same is %f degree \n',alpha)
