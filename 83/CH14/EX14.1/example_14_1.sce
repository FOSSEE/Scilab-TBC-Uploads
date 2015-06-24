//Chapter 14
//Example 14.1
//page 533
//To estimate the values of the random variables x1 and x2
clear;clc;

H=[1 0;0 1;1 1];  //given matrix
k=inv(H'*H)*H'; // from eq 14.9
y=['y1';'y2';'y3'];
k=string(k);
x=[k(1,1)+y(1,1)+k(1,2)+y(2,1)+"+"+k(1,3)+y(3,1) ;k(2,1)+y(1,1)+"+"+k(2,2)+y(2,1)+"+"+k(2,3)+y(3,1)];
printf('Estimate of x =\n');
disp(x);