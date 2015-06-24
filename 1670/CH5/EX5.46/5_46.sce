//Example 5.46
//Newton's Divided Difference Interpolation
//Page no. 192
clc;close;clear;

x=[3,3.6,3.8]
y=[0.13515,0.83059,0.26253];
deff('y=f1(x1,x2,y1,y2)','y=(y2-y1)/(x2-x1)');
deff('y=f2(x1,x2,x3,y1,y2,y3)','y=(f1(x2,x3,y2,y3)-f1(x1,x2,y1,y2))/(x3-x1)');
function [x]=f(x1,x2,x3,y1,y2,y3)
    x=(x1+2*x2+x3)/4-(f1(x1,x2,y1,y2)+f1(x2,x3,y2,y3))/(4*f2(x1,x2,x3,y1,y2,y3))
endfunction
disp(f1(x(1),x(2),y(1),y(2)),' f(x1,x2) = ')
disp(f1(x(2),x(3),y(2),y(3)),' f(x2,x3) = ')
disp(f2(x(1),x(2),x(3),y(1),y(2),y(3)),' f(x1,x2,x3) = ')
disp(f(x(1),x(2),x(3),y(1),y(2),y(3)),' x0 = ')