// SAMPLE PROBLEM 3/21
clc;clear;funcprot(0);
// Given data
m=0.5;// kg
v_1x=10;// m/s
v_1y=0;// m/s
t_1=1;// s
t_2=2;// s
t_3=3;// s

// Calculation
v_2x=((m*v_1x)-((4*(t_1))+(2*(t_3-t_1))))/(m);// m/s
v_2y=((m*v_1y)+((1*(t_2))+(2*(t_3-t_2))))/(m);// m/s
v_2=[v_2x,v_2y];// m/s
v_2=norm(v_2);// m/s
theta_x=180+atand(v_2y/v_2x);// degree
printf("\nThe velocity of the particle at the end of the 3-s interval,v_2=%2.0f m/s \ntheta_x=%3.1f degree",v_2,theta_x);
