clear;
clc;
A=[3,4,1];
B=[0,2,-5];
det_A=(A(1,1)^2+A(1,2)^2+A(1,3)^2)^0.5;
det_B=(B(1,1)^2+B(1,2)^2+B(1,3)^2)^0.5;
theta=acosd((sum(A.*B))/(det_A*det_B));
disp(theta,'Angle between A and B is :')