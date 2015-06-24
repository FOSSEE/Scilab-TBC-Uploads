//example 3.8
//interpolation
//page 89
clc;clear;close;
x=[0.10 0.15 0.20 0.25 0.30];
y=[0.1003 0.1511 0.2027 0.2553 0.3093];
h=0.05//interval between values of x
c=1;
for i=1:4
    d1(c)=y(i+1)-y(i);
    c=c+1;
end
c=1;
for i=1:3
    d2(c)=d1(i+1)-d1(i);
    c=c+1
end
c=1;
for i=1:2
    d3(c)=d2(i+1)-d2(i);
    c=c+1;
end
c=1;
for i=1:1
    d4(c)=d3(i+1)-d3(i);
    c=c+1;
end

d=[d1(1) d2(1) d3(1) d4(1)];
x0=0.12;//value at 0.12;
pp=1;
y_x=y(1);
p=(x0-x(1))/h;
for i=1:4
    pp=1;
    for j=1:i
    pp=pp*(p-(j-1))    
    end
y_x=y_x+(pp*d(i))/factorial(i);
end
printf('value of function at %f is :%0.4g\n \n',x0,y_x);
d=[d1(4) d2(3) d3(2) d4(1)];
x0=0.26;//value at 0.26;
pp=1;
y_x=y(5);
p=(x0-x(5))/h;
for i=1:4
    pp=1;
    for j=1:i
    pp=pp*(p-(j-1))    
    end
y_x=y_x+(pp*d(i))/factorial(i);
end
printf('value of function at %f is :%0.4g\n \n',x0,y_x);
d=[d1(4) d2(3) d3(2) d4(1)];
x0=0.40;//value at 0.40;
pp=1;
y_x=y(5);
p=(x0-x(5))/h;
for i=1:4
    pp=1;
    for j=1:i
    pp=pp*(p+(j-1))    
    end
y_x=y_x+(pp*d(i))/factorial(i);
end
printf('value of function at %f is :%0.4g\n \n',x0,y_x);
d=[d1(4) d2(3) d3(2) d4(1)];
x0=0.50;//value at 0.50;
pp=1;
y_x=y(5);
p=(x0-x(5))/h;
printf('value of function at %f is :%0.5g\n \n',x0,y_x);
