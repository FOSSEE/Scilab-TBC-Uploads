//double interpolation 
//example 3.26
//page 119
clc;clear;close;
y=[0 1 2 3 4];
x=[0 1 4 9 16;2 3 6 11 18;6 7 10 15 22;12 13 16 21 28;18 19 22 27 34];
printf(' y\t\n');
for i=1:5
    printf('\n%d',y(i));
end
printf('\n\n-----------------------------------------------x--------------------------------------------\n');
printf('0\t     1\t    2\t    3\t   4\t\n');
printf('--------------------------------------------------------------------------------------------\n');
for i=1:5
    for j=1:5
printf('%d\t',x(i,j));
end
printf('\n');
end
//for x=2.5;
for i=1:5
    z(i)=(x(i,3)+x(i,4))/2;
end
//y=1.5;
Z=(z(2)+z(3))/2;
printf(' the interpolated value when x=2.5 and y=1.5 is : %f',Z);