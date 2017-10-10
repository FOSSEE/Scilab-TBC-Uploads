// SAMPLE PROBLEM 5/11
clc;funcprot(0);
// Given data
r=300/1000;// m
r_0=200/1000;// m
v_o=3;// m/s
OCbar=r;// m
theta=120;// degree

// Calculation
omega=v_o/OCbar;// rad/s
ACbar=sqrt(r^2+r_0^2-(2*r*r_0*cosd(theta)));// m
v_A=ACbar*omega;// m/s
printf("\nThe velocity of point A for the position indicated,v_A=%1.2f m/s",v_A);
