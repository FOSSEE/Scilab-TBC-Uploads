// Example 3_6
clc;funcprot(0);
// Given data
T=100;// The torque in N.m
n=3000;// rpm

// Calculation
omega=n*(2*%pi)*(1/60);// rad/s
W=T*omega;// The power in W
Hp=W/746;// The horse power in hp
printf("\nThe horse power delivered,Hp=%2.1f hp",Hp);
