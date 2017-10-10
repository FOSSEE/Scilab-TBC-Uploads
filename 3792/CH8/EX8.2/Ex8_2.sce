// SAMPLE PROBLEM 8/2
clc;funcprot(0);
// Given data 
m=8;// kg
s=0.2;// m
t_1=0;// s
t_2=2;// s
c=20;// N.s/m
k=32;// N/m

// Calculation
omega_n=sqrt(k/m);// rad/s
eta=c/(2*m*omega_n);// The damping ratio
omega_d=omega_n*(sqrt(1-eta^2));// The damped natural frequency in rad/s
x_2=0.256*(exp((-1.25*t_2)))*(sin((1.561*t_2)+0.896));// m
printf("\nThe displacement in meters, x_2=%0.5f m",x_2);
