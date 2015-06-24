//Example 10.19
//Adams Basforth formula
//Page no. 333
clc;clear;close;
x=[0,0.1,0.2,0.3,0.4];i=5;
y=[1,1.0025,1.0101,1.0228];
h=0.1;
deff('y=f(x,y)','y=x*y/2')
//adams basforth formula
y(i)=y(i-1)+h*(55*f(x(i-1),y(i-1))-59*(f(x(i-2),y(i-2)))+37*f(x(i-3),y(i-3))-9*f(x(i-4),y(i-4)))/24
disp(y(i),"By Adams Basforth Formula : ")
//adams moulton formula
y(i)=y(i-1)+h*(9*f(x(i),y(i))+19*f(x(i-1),y(i-1))-5*(f(x(i-2),y(i-2)))+f(x(i-3),y(i-3)))/24
disp(y(i),"By Adams Moulton Formula : ")