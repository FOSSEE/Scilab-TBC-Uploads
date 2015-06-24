//lagrange's interpolation
//example 3.17
//page 106
clc;clear;close;
x=[0  3 4];
y=[-12 12 24];
//1 appears to be one the roots the polynomial
for i=1:3
    r_x(i)=y(i)/(x(i)-1);
end
deff('y=l0(x)','y=((x-3)*(x-4))/((-3)*(-4))')
x=poly(0,'x');
disp(l0(x),'l0(x)=');
deff('y=l1(x)','y=((x-0)*(x-4))/((3)*(-1))')
x=poly(0,'x');
disp(l1(x),'l1(x)=');
deff('y=l2(x)','y=((x-0)*(x-3))/((4)*(1))')
x=poly(0,'x');
disp(l2(x),'l2(x)=');
disp(l0(x)*r_x(1)+l1(x)*r_x(2)+l2(x)*r_x(3),'f_(x)=');
disp((x-1)*(l0(x)*r_x(1)+l1(x)*r_x(2)+l2(x)*r_x(3))','the required polynimial is :')