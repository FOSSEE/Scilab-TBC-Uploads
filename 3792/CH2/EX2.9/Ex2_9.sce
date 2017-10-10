// Example 2_9
clc;funcprot(0);
// Given data
// theta=0.2t+0.02t^3;
// r=0.2+0.04t^2;
t=3;// s

// Calculation
r_3=0.2+(0.04*t^2);// m
rdot_3=0.08*t;// m/s
rdotdot_3=0.08;// m/s^2
theta_3=(0.2*t)+(0.02*t^3);// rad
thetadot_3=0.2+(0.06*t^2);// rad/s
thetadotdot_3=0.12*t;// rad/s^2
v_r=rdot_3;// m/s
v_theta=r_3*thetadot_3;// m/s
v=sqrt(v_r^2+v_theta^2);// m/s
a_r=rdotdot_3-(r_3*thetadot_3^2);// m/s^2
a_theta=((r_3*thetadotdot_3)+(2*rdot_3*thetadot_3));// m/s^2
a=sqrt(a_r^2+a_theta^2);// m/s^2
printf("\nThe magnitudes of the velocity and acceleration of the slider, v=%0.3f m/s and a=%0.3f m/s^2",v,a);
