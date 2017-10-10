// SAMPLE PROBLEM 3/29
clc;funcprot(0);
// Given data
v_1=50;// m/s
v_2=0;// m/s
e=0.5;// The effective coefficient of restitution
theta=30;// degree

// Calculation
v_1an=e*v_1*sind(theta);// ft/sec
v_1at=v_1*cosd(theta);// ft/sec
// Assume ' as a
v_a=sqrt((v_1an)**2+(v_1at)**2);// ft/sec
theta_a=atand((v_1an/v_1at));// degree
printf("\nThe rebound velocity and its angle are then v_a=%2.1f ft/sec and theta_a=%2.1f degree",v_a,theta_a);
