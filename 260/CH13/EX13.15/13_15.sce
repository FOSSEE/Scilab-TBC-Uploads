//Eg-13.15
//pg-559

clear
clc

deff('out = func(in1,in2)','out = 0.5*(1+in1)*in2^2')

x(1) = 0;
y(1) = 1;

h = 0.001;

n = 0.3/0.001;

for(i = 1:n)
    x(i+1) = x(i) + h;
end

a = (2^0.5-1)/2;
b = (2-2^0.5)/2;
c = -(2^0.5)/2;
d = 1 + (2^0.5)/2;

for(i = 1:n)
    
    k1(i) = h*func(x(i),y(i));
    k2(i) = h*func(x(i)+h/2,y(i)+k1(i)/2);
    k3(i) = h*func(x(i)+h/2,y(i)+a*k1(i)+b*k2(i));
    k4(i) = h*func(x(i)+h,y(i)+c*k2(i)+d*k3(i));
    y(i+1) = y(i) + 1/6*(k1(i)+2*b*k2(i)+2*d*k3(i)+k4(i));
    
    
end

printf('   t          y          F(t,y)\n')

for(i = 0:3)
    printf('%f    %f    %f\n',x(i*100+1),y(i*100+1),func(x(i*100+1),y(i*100+1)))
end

//Using equations [61] and [62]

y0 = y(1);
y1 = y(101);
y2 = y(201);
y3 = y(301);
x0 = x(1);
x1 = x(101);
x2 = x(201);
x3 = x(301);
x4 = 0.4;
h = 0.1;

y4b = y0 + 4*h/3*(2*func(x3,y3) - func(x2,y2) + 2*func(x1,y1));

y4 = y2 + h/3*(func(x2,y2) + 4*func(x3,y3) + func(x4,y4b));

printf('\nThe value of y4 = %f\n',y4)