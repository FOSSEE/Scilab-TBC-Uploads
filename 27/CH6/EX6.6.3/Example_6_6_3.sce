clear;
clear;
clc;
close;
//obtain the General Jacobian "A";

x1= %pi/2; y1= %pi/2;
x2= %pi/2; y2= -%pi/2;
x3= -%pi/2; y3= %pi/2;
x4= -%pi/2; y4= -%pi/2;

A1 = [2*sin(x1) sin(y1); sin(x1) 2*sin(y1)]
t1=det(A1)
tau1=trace(A1)
d1 = ((tau1)^2) - 4*t1
A2 = [2*sin(x2) sin(y2); sin(x2) 2*sin(y2)]
t2=det(A2)
tau2=trace(A2)
d2 = ((tau2)^2) - 4*t2
A3 = [2*sin(x3) sin(y3); sin(x3) 2*sin(y3)]
t3=det(A3)
tau3=trace(A3)
d3 = ((tau3)^2) - 4*t3
A4 = [2*sin(x4) sin(y4); sin(x4) 2*sin(y4)]
t4=det(A4)
tau4=trace(A4)
d4 = ((tau4)^2) - 4*t4


disp("From the above information we come to following conclusion:")
disp("1.    (pi/2,pi/2) --> Unstable Node.")
disp("2.    (pi/2,-pi/2) --> Saddle.")
disp("3.    (-pi/2,pi/2) --> Saddle.")
disp("4.    (-pi/2,-pi/2) --> Stable Node.")