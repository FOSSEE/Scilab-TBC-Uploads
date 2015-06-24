//area using cubic spline method
//example 6.2
//page 230
clc;clear;close;
x=[0 0.5 1.0];
y=[0 1.0 0.0]
h=0.5;
M0=0,M2=0;
M1=(6*(y(3)-2*y(2)+y(1))/h^2-M0-M2)/4;
M=[M0 M1 M2];
I=0;
for i=1:2
    I=I+(h*(y(i)+y(i+1)))/2-((h^3)*(M(i)+M(i+1))/24);
end
printf(' the value of the integrand is : %f',I);
