//taylor series
//example 1.13
//page 16
clc;clear;close;
deff('y=f(x)','y=sin(x)');
deff('y=f1(x)','y=cos(x)');
deff('y=f2(x)','y=-sin(x)');
deff('y=f3(x)','y=-cos(x)');
deff('y=f4(x)','y=sin(x)');
deff('y=f5(x)','y=cos(x)');
deff('y=f6(x)','y=-sin(x)');
deff('y=f7(x)','y=-cos(x)');
D=[f(%pi/6) f1(%pi/6) f2(%pi/6) f3(%pi/6) f4(%pi/6) f5(%pi/6) f6(%pi/6) f7(%pi/6)];
S1=0;
h=%pi/6;
printf('order of approximation  computed value of sin(pi/3)   absolute eror\n\n');
for j=1:8
for i=1:j
    S1=S1+h^(i-1)*D(i)/factorial(i-1);
end
printf('%d                       %0.9f                        %0.9f\n',j,S1,abs(sin(%pi/3)-S1));
S1=0;
end


