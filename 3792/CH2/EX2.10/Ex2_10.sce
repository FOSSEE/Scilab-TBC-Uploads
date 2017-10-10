// Example 2_10
clc;funcprot(0);
// Given data
theta_i=30;// degrees
r=25*10^4;// ft
rdot=4000;// ft/sec
theta=0.80;// deg/sec
g=31.4;// ft/sec^2

// Calculation
v_r=rdot;// ft/sec
v_theta=r*(theta*%pi/180);// ft/sec
v=sqrt(v_r^2+v_theta^2);// ft/sec
a_r=-g*cosd(theta_i);// ft/sec^2
a_theta=g*sind(theta_i);// ft/sec^2
rdotdot=a_r+(r*(theta*(%pi/180))^2);// ft/sec^2
thetadotdot=(a_theta-(2*rdot*theta*%pi/180))/r;// ft/sec^2
printf("\nThe velocity of the rocket,v=%4.0f ft/sec \nrdotdot=%2.1f ft/sec^2 and thetadotdot=%1.2e rad/sec^2",v,rdotdot,thetadotdot);
