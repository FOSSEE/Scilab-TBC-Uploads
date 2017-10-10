// SAMPLE PROBLEM 5/2
clc;clear;funcprot(0);
// Given data
v=3;// ft/sec
s=4;// ft
d_C=48;// inch
d_B=36;// inch
d_A=12;// inch
r_A=d_A/2;// inch
r_C=d_C/2;// inch
r_B=d_B/2;// inch

// Calculation
// (a)
a=v^2/(2*s);// ft/sec^2
a_t=a;// ft/sec^2
a_n=v^2/(r_C/12);// ft/sec^2
a_C=sqrt(a_n^2+a_t^2);// ft/sec^2
// (b)
omega_B=v/(r_C/12);// rad/sec
alpha_B=a_t/(r_C/12);// rad/sec^2
omega_A=(r_B/r_A)*omega_B;// rad/sec CW
alpha_A=(r_B/r_A)*alpha_B;// rad/sec^2 CW
printf("\n(a)The acceleration of point C on the cable in contact with the drum,a_C=%1.2f ft/sec^2 \n(b)The angular velocity and angular accelerationof the pinion A,omega_A=%1.1f rad/sec CW and alpha_A=%1.3f rad/sec^2 CW",a_C,omega_A,alpha_A);
