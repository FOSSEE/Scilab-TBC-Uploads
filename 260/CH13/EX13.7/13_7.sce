//Eg-13.7
//pg-537

clear
clc

A = 0.9;
B = 0.09;
y(1) = 1;

deff('out = func(in1,in2)','out = A*in2 - B*in2^2')

h = 0.5;
//Given the expression of analytical solution : y(t) = 10/(1+9*exp(-0.9*t))

//The index again is 1-11 instead of 0-10

for(i = 1:11)
    
    x(i) = 0 + (i-1)*h;
    yex(i) = 10/(1+9*exp(-0.9*x(i)))
end

a = (2^0.5-1)/2;
b = (2-2^0.5)/2;
c = -(2^0.5)/2;
d = 1 + (2^0.5)/2;

printf('   x         yRKG       yExact\n')
for(i = 1:10)
    k1(i) = h*func(x(i),y(i));
    k2(i) = h*func(x(i)+h/2,y(i)+k1(i)/2);
    k3(i) = h*func(x(i)+h/2,y(i)+a*k1(i)+b*k2(i));
    k4(i) = h*func(x(i)+h,y(i)+c*k2(i)+d*k3(i));
    y(i+1) = y(i) + 1/6*(k1(i)+2*b*k2(i)+2*d*k3(i)+k4(i));
    
    printf('%f    %f    %f\n',x(i+1),y(i+1),yex(i+1))
end

printf('\nTherefore, it is observed that the RKG solution closely matches \nwith the analytical solution.\n')









