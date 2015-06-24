//Exam:3.10
clc;
clear;
close;
//Miller indices of plane
h_1=1;
k_1=1;
l_1=1;
h_2=1;
k_2=2;
l_2=1;
angle=acosd((h_1*h_2+k_1*k_2+l_1*l_2)/(((h_1^2+k_1^2+l_1^2)^(1/2))*((h_2^2+k_2^2+l_2^2)^(1/2))));
disp(angle,'angle Between normals to the planes (111) and (121)(in degrees)=');