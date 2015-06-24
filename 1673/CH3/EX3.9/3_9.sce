//example 3.9
//Gauss' forward formula
//page 3.9
clc;clear;close;
x=[1.0 1.05 1.10 1.15 1.20 1.25 1.30];
y=[2.7183 2.8577 3.0042 3.1582 3.3201 3.4903 3.66693];
h=0.05//interval between values of x
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
c=1;
for i=1:2
    d5(c)=d4(i+1)-d4(i);
    c=c+1;
end
c=1;
for i=1:1
    d6(c)=d5(i+1)-d5(i);
    c=c+1;
end
d=[d1(4) d2(3) d3(3) d4(2) d5(1) d6(1)];
x0=1.17;//value at 1.17;
pp=1;
y_x=y(4);
p=(x0-x(4))/h;
for i=1:6
    pp=1;
    for j=1:i
    pp=pp*(p-(j-1))    
    end
y_x=y_x+(pp*d(i))/factorial(i);
end
printf('value of function at %f is :%0.4g\n \n',x0,y_x);
