// SAMPLE PROBLEM 6/9
clc;funcprot(0);
// Given data
F=100;// N
m=40;// kg
k=0.150;// m
theta=15;// degree
r_i=0.100;// m
r_o=0.200;// m
l=3;// The distance in m
g=9.81;// The acceleration due to gravity in m/s^2

// Calculation
W=m*g;// N
l=(r_o+r_i)/r_i;// m
U_12=(F*((r_o+r_i)/r_i)*l)-((W*sind(theta)*l));// J
T_1=0;// J
// T_2=((1/2)*m*vbar^2)+((1/2)*Ibar*omega^2);
// The work-energy equation gives
omega=sqrt((T_1+U_12)/(((1/2)*m*(r_i)^2)+((1/2)*m*k^2)));// rad/s
// Alternatively, the kinetic energy of the wheel may be written
// T=(1/2)*I_C*omega^2
P_100=F*(r_o+r_i)*omega;// W
printf("The power input,P=%3.0f W",P_100);
