//Example 10.4
//Euler Method
//Page no. 309
clc;clear;close;
deff('y=f(x,y)','y=(x-y)/2')
y(1)=1;
h=0.5;
for i=1:7
    printf('\ny(%g) = %g\n',(i-1)*h,y(i))
    y(i+1)=y(i)+h*f((i-1)*h,y(i))
    
end