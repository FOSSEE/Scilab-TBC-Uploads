//Eg-13.19
//pg-567

clear
clc

deff('out = func(in1,in2,in3)','out = in3 - in2')

//At t = 0

t = 0;
y0(1) = 1;
y1(1) = y0 - 1;

//Now all the values are known at t = 0. We will now use the Euler's method to compute y0 at (t+h), with h = 0.1

//At t = 0.1 

t = 0.1;
y0(2) = y0(1) + t*func(0,y0(1),y1(1));
y1(2) = y0(2) - 1;

//Similarly

t = 0.2;
y0(3) = y0(2) + t*func(0.1,y0(2),y1(2));
y1(3) = y0(3) - 1;

t = 0.3;
y0(4) = y0(3) + t*func(0.2,y0(3),y1(3));
y1(4) = y0(4) - 1;

printf('Therefore at t = 0.3, y0 = %f, y1 = %f\n',y0(3),y1(3))

//printf('%f    %f\n%f    %f\n%f    %f\n',y0(1),y1(1),y0(2),y1(2),y0(3),y1(3))







