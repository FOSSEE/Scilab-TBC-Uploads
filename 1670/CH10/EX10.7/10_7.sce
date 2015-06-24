//Example 10.7
//Modified Euler Method
//Page no. 312
clc;clear;close;
deff('y=f(x,y)','y=x+abs(sqrt(y))')
y(1)=1;
h=0.2;
for i=1:4
    printf('\ny(%g) = %g\n',(i-1)*h,y(i))
    y(i+1)=y(i)+h*f((i-1)*h+h/2,y(i)+h*f((i-1)*h,y(i))/2)
end
disp("Computation Error in book solved example 10.7")