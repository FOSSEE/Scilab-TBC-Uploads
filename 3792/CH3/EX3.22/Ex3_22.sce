 // SAMPLE PROBLEM 3/22
clc;funcprot(0);
// Given data
m=150;// kg
v_1=4;// m/s
t_0=0;// s
t_1=4;// s
P=600;// N
t_2=8;// s
theta=30;// degree
g=9.81;// The acceleration due to gravity in m/sec^2

// Calculation
deltat=(m*0)+((m*v_1)-((v_1*2*P)/2)+(m*g*sind(theta)))/((2*P)+(m*g*sind(theta)));// s
t_a=v_1+deltat;// s
v_2x=((m*-v_1)+((v_1*2*P)/2)+(v_1*2*P)-(m*g*sind(theta)*t_2))/m;// m/s
printf("\n(a)The time at which the skip reverses its direction,t_a=%1.2f s \n(b)The velocity of the skip,v_2x=%1.2f m/s",t_a,v_2x);
