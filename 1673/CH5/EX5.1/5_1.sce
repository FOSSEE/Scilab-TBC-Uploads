//linear splines
//example 5.1
//page 182
clc;clear;close;
X=[1 2 3];
y=[-8 -1 18];
m1=(y(2)-y(1))/(X(2)-X(1));
deff('y1=s1(x)','y1=y(1)+(x-X(1))*m1');
m2=(y(3)-y(2))/(X(3)-X(2));
deff('y2=s2(x)','y2=y(2)+(x-X(2))*m2');
a=poly(0,'x');
disp(s1(a));
disp(s2(a));
printf(' the value of function at 2.5 is %0.2f: ',s2(2.5));
