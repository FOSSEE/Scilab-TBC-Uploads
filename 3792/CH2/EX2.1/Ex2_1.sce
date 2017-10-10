// Example 2_1
clc;funcprot(0);
// Given data
// s=2t^3-24t+6;
v_a=72;// Velocity in m/s
v_b=30;// Velocity in m/s
t_0=1;// s
t_1=4;// s

// Calculation
// v=6t^2-24;
// a=12t;
// (a)
t=sqrt((v_a+24)/6);// Time in s
// (b)
a=sqrt((v_b+24)/6);// Time in s
// (c)
s4=((2*t_1^3)-(24*t)+6);// m
s1=((2*t_0^3)-(24*t_0)+6)// m;
deltaS=s4-s1;// The net displacement during the specified interval in m
printf("\n(a)The time required for the particle to reach a velocity of 72 m/s from its initial condition at t=0 is %1.0f s.\n(b)The acceleration of the particle a=%2.0f m/s^2 \n(c)The net displacement,deltaS=%2.0f m",t,a,deltaS);
