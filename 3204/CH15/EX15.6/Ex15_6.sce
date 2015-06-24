// Initilization of variables
t=1 // seconds
pi=3.14
// Calculations
// From the equations of r and theta given we find 1st & 2nd derative and substitute t=1sec Here we consider the 1st derative as r_1 & theta_1 and so on...
r=(1.25*t^2)-(0.9*t^3) // m
r_1=(1.25*(2*t))-(0.9*(3*t^2)) // m/s
r_2=2.5-(0.9*3*(2*t)) // m/s^2
theta=(pi/2)*(4*t-3*t^2) // radian
theta_1=(pi/2)*(4-(6*t)) // rad/second
theta_2=(pi/2)*(0-(6*t)) // rad/second^2
// Velocity of collar P
v_r=r_1 // m/s
v_theta=r*theta_1 // m/s
v=sqrt(v_r^2+v_theta^2) // m/s
alpha=atand(v_theta/v_r) // degree
// Acceleration of the collar P
a_r=r_2-(r*theta_1^2) // m/s^2
a_theta=(r*theta_2)+(2*r_1*theta_1) // m/s^2
a=sqrt(a_r^2+a_theta^2) // m/s^2
beta=atand(a_theta/a_r) // degree
// Acceleration of collar P relative to the rod. Let it be a_relative
a_relative=r_2 // m/s^2 // towards O
// Calculations
clc
printf('The velocity of the collar is %f m/s \n',v)
printf('The accelaration of the collar is %f m/s^2 \n',a)
printf('The acceleration of the collar relative to the rod is %f m/s^2 \n',a_relative)
