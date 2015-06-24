// Consider the eq'ns of motion from the book
// The notations have been changed for the derivatives of r & theta
// (1) At t=0 s
theta_0=0
theta_1=2*%pi // rad/s
theta_2=0
r_0=0
r_1=10 // cm/s
r_2=0
// At t=0.3 s
t=0.3 // sec
theta=2*%pi*t // rad
theta1=2*%pi // rad/s
theta2=0
r=10*t // cm
r1=10 // cm/s
r2=0
// (i) 
//Velocity
v_r=r_1 // cm/s
v_theta=r_0*theta_1
v=sqrt(v_r^2+v_theta^2) // cm/s
// Acceleration
a_r=r_2-(r_0*theta_1^2) // cm/s^2
a_theta=(r_0*theta_2)+(2*r_1*theta_1) // cm/s^2
a=sqrt(a_r^2+a_theta^2) // cm/s^2
// (ii)
// Velocity
V_R=r1 // cm/s
V_theta=r*theta1 // cm/s
V=sqrt(V_R^2+V_theta^2) // cm/s
// Acceleration
A_r=r2-(r*theta1^2) // cm/s^2
A_theta=(r*theta2)+(2*r1*theta1) // cm/s^2
A=sqrt(A_r^2+A_theta^2) // cm/s^2
// Results
clc
printf('The velocity and the acceleration of the partice at t=0 s is %f cm/s & %f cm/s^2 \n',v,a)
printf('The velocity and the acceleration of the partice at t=0.3 s is %f cm/s & %f cm/s^2 \n',V,A)
