//practical interpolation
//example 3.11
//page 99
clc;clear;close;
x=[0.61 0.62 0.63 0.64 0.65 0.66 0.67];
y=[1.840431 1.858928 1.877610 1.896481 1.915541 1.934792 1.954237];
h=0.01//interval between values of x
c=1;
for i=1:6
    d1(c)=y(i+1)-y(i);
    c=c+1;
end
c=1;
for i=1:5
    d2(c)=d1(i+1)-d1(i);
    c=c+1
end
c=1;
for i=1:4
    d3(c)=d2(i+1)-d2(i);
    c=c+1;
end
c=1;
for i=1:3
    d4(c)=d3(i+1)-d3(i);
    c=c+1;
end
d=[d1(1) d2(1) d3(1) d4(1)];
x0=0.638;
p=(x0-x(4))/h;
y_x=y(4);
y_x=y_x+p*(d1(3)+d1(4))/2+p^2*(d2(2))/2;//stirling formula
printf(' the value at %f by stirling formula is : %f\n\n',x0,y_x);
y_x=y(3);
p=(x0-x(3))/h;
y_x=y_x+p*d1(3)+p*(p-1)*(d2(2)/2);
printf(' the value at %f by bessels formula is : %f\n\n',x0,y_x);
