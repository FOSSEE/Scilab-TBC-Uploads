// SAMPLE PROBLEM 4/4
clc;clear;funcprot(0);
// Given data
m=20;// kg
u_z=300;// m/s
g=9.81;// m/s^2
m_a=5;// kg
m_b=9;// kg
m_c=6;// kg
theta=45;// degree
s=4000;// m
x=3;// m
y=4;// m
r=5;// m
h_a=500;// m

// Calculation
t=(u_z*(y/r))/g;// The time required for the shell to reach P in s
h=u_z^2/(2*g);// The verticl rise in m
v_a=sqrt(2*g*h_a);// m/s
v_b=s/t;// m/s
v_c=[(m*u_z*(x/r))-(m_b*v_b*cosd(theta)),(m_b*v_b*sind(theta)),(m_a*v_a)]/6;// m/s
v_c=sqrt((v_c(1))^2+(v_c(2))^2+(v_c(3))^2);// m/s
printf("\nThe velocity which fragment C has immediately after the explosion,v_C=%3.0f m/s",v_c);
