//example 3.22
//newton's divided formula
//page 114
clc;clear;close
x=[-1 0 3 6 7];
y=[3 -6 39 822 1611];
for i=1:4
    d1(i)=(y(i+1)-y(i))/(x(i+1)-x(i));
end
for i=1:3
    d2(i)=(d1(i+1)-d1(i))/(x(i+2)-x(i));
end
for i=1:2
    d3(i)=(d2(i+1)-d2(i))/(x(i+3)-x(i));
end
for i=1:1
    d4(i)=(d3(i+1)-d3(i))/(x(i+4)-x(i));
end
X=poly(0,'X')
f_x=y(1)+(X-x(1))*(d1(1))+(X-x(2))*(X-x(1))*d2(1)+(X-x(1))*(X-x(2))*(X-x(3))*d3(1)+(X-x(1))*(X-x(2))*(X-x(3))*(X-x(4))*d4(1)
disp(f_x,'the polynomial equation is =')