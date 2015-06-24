//quadratic splines
//example 5.2
//page 18
clc;clear;close;
X=[1 2 3];
y=[-8 -1 18];
h=X(2)-X(1);
m1=(y(2)-y(1))/(X(2)-X(1));
m2=(2*(y(2)-y(1)))/h-m1;
m3=(2*(y(3)-y(2)))/h-m2;
deff('y2=s2(x)','y2=(-(X(3)-x)^2*m1)/2+((x-X(2))^2*m3)/2+y(2)+m2/2');
a=poly(0,'x');
disp(s2(a));
printf('the value of function is 2.5: %0.2f',s2(2.5));
x=2.0;
h=0.01;
deff('y21=s21(x,h)','y21=(s2(x+h)-s2(x))/h');
d1=s21(x,h);
printf('\n\nthe first derivative at 2.0 :%0.2f',d1);


