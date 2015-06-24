// Initilization of variables
m=0.1 // kg // mass of ball
// Calculations
// Consider the respective F.B.D.
// For component eq'n in x-direction
delta_t=0.015 // seconds // time for which the ball &the bat are in contact
v_x_1=-25 // m/s 
v_x_2=40*cosd(40) // m/s
F_x_average=((m*(v_x_2))-(m*(v_x_1)))/(delta_t) // N
// For component eq'n in y-direction
delta_t=0.015 // sceonds
v_y_1=0 // m/s
v_y_2=40*sind(40) // m/s
F_y_average=((m*v_y_2)-(m*(v_y_1)))/(delta_t) // N
F_average=sqrt(F_x_average^2+F_y_average^2) // N
// Results
clc
printf('The average impules force exerted by the bat on the ball is %f N \n',F_average)
