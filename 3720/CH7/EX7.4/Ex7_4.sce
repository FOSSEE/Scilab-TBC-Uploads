//Example 7_4
clc;clear;
// Given values
g_moon=9.81/6;//The gravitational constant on the moon in m/s^2
t_1=2.75;
V=21;// Initial speed of the ball in m/s
theta=5;// degree
z_0=2.0;// m

//Calculation
//(a)
w_0=V*sind(theta);
Fr=w_0^2/(g_moon*z_0);
Fr=(Fr)^2;
t=(t_1*z_0)/w_0
printf("Estimated time to strike the ground=%0.2f s\n",t);
//(b)
t_2=(w_0+sqrt(w_0^2+(2*z_0*g_moon)))/g_moon;
printf("Exact time to strike the ground=%0.2f s\n",t_2);
// The answers vary due to round off error
