//Example 3.1
//Direct Method
//Page no. 3.1
clc;clear;close;

A=[1,1,2;1,2,3;2,3,1];         //Parameter Matrix
B=[1;1;2]
C=inv(A)*B;
disp(C,"Solution Matrix = ")