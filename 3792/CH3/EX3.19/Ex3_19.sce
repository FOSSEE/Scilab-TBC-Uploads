// SAMPLE PROBLEM 3/19
clc;clear;funcprot(0);
// Given data
v_1=50;// ft/sec
v_2=70;// ft/sec
theta=15;// degree
dt=0.02;// sec
g=32.2;// The acceleration due to gravity in ft/sec^2

// Calculation
W=2/16;// N
v_1x=v_1;// ft/sec
v_2x=v_2;// ft/sec
v_1y=0;// ft/sec
v_2y=v_2;// ft/sec
R_x=(((W/g)*(v_2x*cosd(theta)))+((W/g)*(v_1x)))/dt;// lb
R_y=(((W/g)*(v_2y*sind(theta)))+((W/g)*(v_1y)))/dt;// lb
R=sqrt(R_x^2+R_y^2);// lb
beta=atand(R_y/R_x);// degree
printf("\nThe magnitude of the average force exerted by the racket on the ball,R=%2.1f lb \nThe angle made by R with the horizontal,beta=%1.2f degree",R,beta);
