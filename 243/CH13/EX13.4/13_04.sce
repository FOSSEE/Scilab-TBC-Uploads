//Example No. 13_04
//Euler's Method
//Pg No. 417
clear ; close ; clc ;

deff('DY = dy(x)','DY = 3*x^2 + 1')
x0 = 1
y(1) = 2 ;
//h = 0.5
h = 0.5
mprintf('for h = %f\n',h)
for i = 2 : 3
    y(i) = y(i-1) + h*dy(x0+(i-2)*h)
    mprintf('y(%f) = %f\n',x0+(i-1)*h,y(i))
end
//h = 0.25
h = 0.25
mprintf('\nfor h = %f\n',h)
for i = 2 : 5
    y(i) = y(i-1) + h*dy(x0+(i-2)*h)
    mprintf('y(%f) = %f\n',x0+(i-1)*h,y(i))
end