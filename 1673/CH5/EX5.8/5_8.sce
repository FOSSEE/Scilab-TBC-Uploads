//cubic B-splines
//example 5.8
//page 200
clc;clear;close;
k=[0 1 2 3 4];
pi=[0 0 4 -6 24];
x=1;
S=0;
for i=3:5
    S=S+((k(i)-x)^3)/(pi(i));
end
printf( ' the cubic splines for x=1 is %f\n\n',S);
S=0;
x=2;
for i=4:5
    S=S+((k(i)-x)^3)/(pi(i));
end
printf( ' the cubic splines for x=2 is  %f\n\n',S);
