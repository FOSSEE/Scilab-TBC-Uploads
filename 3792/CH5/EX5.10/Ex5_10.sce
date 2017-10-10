// SAMPLE PROBLEM 5/10
clc;funcprot(0);
// Given data
v_B=0.8;// The velocity in m/s
theta=30;// degree
d_co=18;// The distance in inch

// Calculation
v_A=v_B*cosd(theta);// ft/sec
OAbar=(d_co/12)/(cosd(theta));// ft
omega=v_A/(OAbar);// rad/sec CCW
printf("\nThe angular velocity of the slotted arm,omega=%0.3f rad/sec CCW",omega);
