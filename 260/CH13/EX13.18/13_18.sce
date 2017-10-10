//Eg-13.18
//pg-565

clear
clc

deff('out = func(in1,in2)','out = (1-in2*sin(in1)/cos(in1))')

x(1) = 0;
y(1) = 0;

h = 0.1;

for(i = 1:10)
    x(i+1) = x(i) + h;
    
end

//Using RK method

a = (2^0.5-1)/2;
b = (2-2^0.5)/2;
c = -(2^0.5)/2;
d = 1 + (2^0.5)/2;

printf('   x          y\n')

for(i = 1:4)
    
    k1(i) = h*func(x(i),y(i));
    k2(i) = h*func(x(i)+h/2,y(i)+k1(i)/2);
    k3(i) = h*func(x(i)+h/2,y(i)+a*k1(i)+b*k2(i));
    k4(i) = h*func(x(i)+h,y(i)+c*k2(i)+d*k3(i));
    y(i+1) = y(i) + 1/6*(k1(i)+2*b*k2(i)+2*d*k3(i)+k4(i));
    
    
end

for(i = 2:4)
    printf('%f    %f\n',x(i),y(i))
end

x4 = x(5);
x3 = x(4);
x2 = x(3);
x1 = x(2);
x0 = x(1);
y3 = y(4);
y2 = y(3);
y1 = y(2);
y0 = y(1);

//Using the equation : y4 = 1/25*[48*y3 - 36*y2 + 16*y1 - 3*y0 + 12*h*func(x4,y4)]
// => y4 - 1/25*12*h*func(x4,y4) = 1/25*[48*y3 - 36*y2 + 16*y1 - 3*y0 ]
// => y4 = 0.39731/1.02029    analytically

y4 = 0.39731/1.02029;

printf('\n\nThe value of y4 = %f\n',y4)

printf('\nThe analytical solution of this problem is y = sinx.\nThus, the exact solution is y(x = 0.4) = %f\n',y4)