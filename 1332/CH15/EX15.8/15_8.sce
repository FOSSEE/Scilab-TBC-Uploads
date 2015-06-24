//Example 15.8
//Euler Method
//Page no. 513
clc;clear;close;
deff('y=f(x,y)','y=x+y')
y(1)=1;
h=0.1;
for i=1:6
    printf('\ny(%g) = %g\n',(i-1)/10,y(i))
    y(i+1)=y(i)+h*f((i-1)/10,y(i))
    
end