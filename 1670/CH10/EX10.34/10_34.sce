//Example 10.34
//Numerov Method
//Page no. 351
clc;clear;close;
k=0.42;h=0.5
y(1)=0.5;y(2)=k;
deff('y=f2(x,y)','y=-y')
deff('y=g(x)','y=(x-1)*(x-2)')
for i=1:4
    x(i)=(i-1)*h
end

for i=3:4
    y(i)=((2+5*h^2*g(x(i-1))/6)*y(i-1)-(1-h^2*g(x(i-2))/12)*y(i-2))/(1-h^2*g(x(i))/12)
    printf('\ny(%g) = %.6g\n',x(i),y(i))
end