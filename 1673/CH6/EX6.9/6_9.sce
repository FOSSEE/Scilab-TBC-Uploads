//example 6.8
//simpson 1/3rd  method for integration
//page 226
clc;clear;close;
x=[0.00 0.25 0.50 0.75 1.00];
y=[1.000 0.9896 0.9589 0.9089 0.8415];
y=y^2;
h=x(2)-x(1);
l=length(x);
area=0;
for i=1:l
    if i==1|i==l then
       area=area+y(i)
 
  elseif (modulo(i,2))==0 then
           area=area+4*y(i)
       
   elseif (modulo(i,2))~=0 then
          area=area+2*y(i) 
           end
    end
area=area*(h*%pi)/3;
printf('area bounded by the curve is %f',area);
