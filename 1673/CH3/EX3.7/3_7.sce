//example 3.7
//interpolation
//page 89
clc;clear;close;
x=[0 1 2 4];
y=[1 3 9 81];
//equation is y(5)-4*y(4)+6*y(2)-4*y(2)+y(1)
y3=(y(4)+6*y(3)-4*y(2)+y(1))/4;
printf(' the value of missing term of table is :%d',y3);
