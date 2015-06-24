//newton's general interpolation formula
//example 3.22
//page 114
clc;clear;close;
x=[300 304 305 307];
y=[2.4771 2.4829 2.4843 2.4871];
for i=1:3
    d1(i)=(y(i+1)-y(i))/(x(i+1)-x(i));
end
for i=1:2
    d2(i)=(d1(i+1)-d1(i))/(x(i+2)-x(i));
end
x0=301;
log301=y(1)+(x0-x(1))*d1(1)+(x0-x(2))*d2(1);
printf(' valure of log(%d) is :%0.4f',x0,log301);
