// example 6.18
// error estimate in evaluation of the integral
// page 237
clc;clear;close;
deff('z=f(a,b)','z=8+4*sin(a)+4*(8+4*sin((a+b)/2))+8+4*sin(b)')
a=0,b=%pi/2,c=%pi/4;
I(1)=(f(a,b)*((b-a)/2)/3)
I(2)=(f(a,c)*((c-a)/2)/3)
I(3)=(f(c,b)*((b-c)/2)/3)
Area=I(2)+I(3);
Error_estimate=((I(1)-I(2)-I(3))/15);
Actual_area=integrate('8+4*cos(x)','x',0,%pi/2);
Actual_error=abs(Actual_area-Area);
printf('the calculated area obtained is:%f\n',Area)
printf('the actual area obtained is:%f\n',Actual_area)
printf('the actual error obtained is:%f\n',Actual_error)