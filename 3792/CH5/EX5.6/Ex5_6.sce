// SAMPLE PROBLEM 5/6
clc;funcprot(0);
// Given data
v_A=0.3;// m/s
b=0.2;// m
theta=30;// degree

// Calculation
v_B=-v_A*tand(theta);// m/s
a_B=-((v_A^2)/b)*(secd(theta))^3;// m/s^2
omega=(v_A/b)*secd(theta);// rad/s
alpha=((v_A^2)/b^2)*(secd(theta))^2*tand(theta);// rad/s^2
printf("\nThe velocity of the center of the roller B in the horizontal guide,v_B=%1.4f m/s \nThe acceleration of the center of the roller B in the horizontal guide,a_B=%0.3f m/s^2 \nThe angular velocity of edge CB,omega=%1.3f rad/s \nThe angular acceleration of edge CB,alpha=%1.3f rad/sec^2",v_B,a_B,omega,alpha);
