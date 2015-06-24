//clc()
//f'(x,y) = -2*x^3 + 12*x^2 -20*x + 8.5
//f(x,y) = -x^4 / 2 + 4*x^3 - 10*x^2 + 8.5*x + 1
h = 0.5;
x = 0:h:4;
y1 = -x^4 / 2 + 4*x^3 - 10*x^2 + 8.5*x + 1;
y(1) = 1;
disp(x,"x =")
disp(y1,"true value of y =")
for i = 1:8
    k1(i) = -2*x(i)^3 + 12*x(i)^2 -20*x(i) + 8.5;
    x1(i) = x(i) + h/2;
    k2(i) = -2*x1(i)^3 + 12*x1(i)^2 -20*x1(i) + 8.5;
    y(i+1) = y(i) + k2(i)*h;
    e(i) = (y1(i) - y(i))*100/y1(i);
end
disp(y(1:9),"y by midpoint method")
disp(e,"error = ")
for i = 1:8
    k1(i) = -2*x(i)^3 + 12*x(i)^2 -20*x(i) + 8.5;
    x(i) = x(i) + 3*h/4;
    k2(i) = -2*x(i)^3 + 12*x(i)^2 -20*x(i) + 8.5;
    y(i+1) = y(i) + (k1(i)/3 + 2*k2(i)/3)*h;
    e(i) = (y1(i) - y(i))*100/y1(i);
end
disp(y(1:9),"y by second order Ralston RK")
disp(e,"error = ")

