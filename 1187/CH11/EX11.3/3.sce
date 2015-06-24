clc

M1=1.8;
theta1=20.73; // degrees
theta2=30.73; // degrees
M2=2.162;
p1=50; // kPa
y=1.4;

p2=p1*((1+(y-1)/2*M1^2)/(1+(y-1)/2*M2^2))^(y/(y-1));

disp("Pressure after the bend =")
disp(p2)
disp("kPa")