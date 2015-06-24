//Example 10.5
//Euler Method
//Page no. 309
clc;clear;close;
deff('y=f(x,y)','y=(y-x)/(x+y)')
y(1)=1;
h=0.02;
for i=1:6
    printf('\ny(%g) = %g\n',(i-1)*h,y(i))
    y(i+1)=y(i)+h*f((i-1)*h,y(i))
    
end