//example 6.8
//trapezoidal method for integration
//page 226
clc;clear;close;
x=[7.47 7.48 7.49 7.0 7.51 7.52];
f_x=[1.93 1.95 1.98 2.01 2.03 2.06];
h=x(2)-x(1);
l=length(x);
area=0;
for i=1:l
    if i==1|i==l then
       area=area+f_x(i)
   else
       area=area+2*f_x(i)
    end
end
area=area*(h/2);
printf('area bounded by the curve is %f',area);
