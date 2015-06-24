//Example 10.6
//Euler and Modified Euler Method
//Page no. 311
clc;clear;close;
deff('y=f(x,y)','y=y-x^2')
y(1)=1;
h=0.2;
for i=1:4
    printf('\ny(%g) = %g\n',(i-1)*h,y(i))
    y(i+1)=y(i)+h*f((i-1)*h,y(i))
end
printf('\n\n\n By Modified Euler Method\n')
for i=1:4
    printf('\ny(%g) = %g\n',(i-1)*h,y(i))
    y(i+1)=y(i)+h*f((i-1)*h+h/2,y(i)+h*f((i-1)*h,y(i))/2)
end