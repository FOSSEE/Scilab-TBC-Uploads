//interpolation by iteration
//example 3.24
//page 116
clc;clear;close;
x=[300 304 305 307];
y=[2.4771 2.4829 2.4843 2.4871];
x0=301;
for i=1:3
    d=determ([y(i),(x(i)-x0);y(i+1),(x(i+1)-x0)])
    d1(i)=d/(x(i+1)-x(i));
end
for i=1:2
    d=determ([d1(i),(x(i+1)-x0);d1(i+1),(x(i+2)-x0)])
    d2(i)=d/(x(i+2)-x(i+1));
end
for i=1:1
    d=determ([d2(i),(x(i+2)-x0);d2(i+1),(x(i+3)-x0)])
    d3(i)=d/(x(i+3)-x(i+2));
end
printf(' the value of log(%d) is : %f',x0,d3(1))
