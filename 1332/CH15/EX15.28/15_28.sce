//Example 15.28
//Differential Equation
//Page no. 562
clc;clear;close;

deff('y=f(x,y)','y=2*y^2/(1+x)')
h=0.1;z(1)=-1;
for i=1:11
    printf('\nZ(%g) = %g\n',(i-1)/10,z(i))
    z(i+1)=z(i)+h*f((i-1)/10,z(i))
end