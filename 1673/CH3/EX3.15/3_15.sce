//example 3.15
//lagrange's interpolation formula
//page 105
clc;clear;close;
x=[2 2.5 3.0];
y=[0.69315 0.91629 1.09861];
deff('y=l0(x)','y=(x-2.5)*(x-3.0)/(-0.5)*(-1.0)')
x=poly(0,'x');
disp(l0(x),'l0(x)=');
deff('y=l1(x)','y=((x-2.0)*(x-3.0))/((0.5)*(-0.5))')
x=poly(0,'x');
disp(l1(x),'l1(x)=');
deff('y=l2(x)','y=((x-2.0)*(x-2.5))/((1.0)*(0.5))')
x=poly(0,'x');
disp(l2(x),'l2(x)=');
f_x=l0(2.7)*y(1)+l1(2.7)*y(2)+l2(2.7)*y(3);
printf(' the calculated value is %f:',f_x);
printf('\n\n the error occured in the value is %0.9f',abs(f_x-log(2.7)))