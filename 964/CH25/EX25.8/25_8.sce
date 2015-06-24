//clc()
disp("f(x,y) = 4*exp(0.8*x) - 0.5*y")
h = 1;
x = 0:h:4;
y(1) = 2;
for i = 1:5
    k1(i) = 4*(exp(0.8*x(i)))-0.5*y(i);
    x1 = x(i) + h;
    y1 = y(i) + k1(i)*h;
    k2(i) = 4*(exp(0.8*x1))-0.5*y1;
    y(i+1) = y(i) + (k1(i)/2 + k2(i)/2)*h;
end
disp(y(1:5),"y(second order RK method) = ")
for i = 1:5
    k1(i) = 4*(exp(0.8*x(i)))-0.5*y(i);
    x1 = x(i) + 0.5*h;
    y1 = y(i) + 0.5*h*k1(i);
    k2(i) = 4*(exp(0.8*x1))-0.5*y1;
    x1 = x(i) + h;
    y1 = y(i) -k1(i)*h + 2*k2(i)*h;
    k3(i) = 4*(exp(0.8*x1))-0.5*y1;
    y(i+1) = y(i) + (k1(i) + 4*k2(i) + k3(i))*h/6;
end
disp(y(1:5),"y(third order RK method) = ")
for i = 1:5
k1(i) = 4*(exp(0.8*x(i)))-0.5*y(i);
x1 = x(i) + 0.5*h;
y1 = y(i) + 0.5*k1(i)*h;
k2(i) = 4*exp(0.8*x1) - 0.5*y1;
y2 = y(i) + 0.5*k2(i)*h;
k3(i) = 4*exp(0.8*x1) - 0.5*y2;
x1 = x(i) + h;
y1 = y(i) + k3(i)*h;
k4(i) = 4*exp(0.8*x1) - 0.5*y1;
y(i+1) = y(i) + (k1(i)+2*k2(i)+2*k3(i)+k4(i))*h/6;
end
disp(y(1:5),"y(fourth order RK method) = ")
for i = 1:5
    
k1(i) = 4*(exp(0.8*x(i)))-0.5*y(i);
x1 = x(i) + 0.25*h;
y1 = y(i) + 0.25*k1(i)*h;
k2(i) = 4*exp(0.8*x1) - 0.5*y1;
y2 = y(i) + 0.125*k2(i)*h + 0.125*k1(i)*h;
k3(i) = 4*exp(0.8*x1) - 0.5*y2;
x1 = x(i) + 0.5*h;
y1 = y(i) -0.5*k2(i)*h + k3(i)*h;
k4(i) = 4*exp(0.8*x1) - 0.5*y1;
x1 = x(i) + 0.75*h;
y1 = y(i) + 3*k1(i)*h/16 + 9*k4(i)*h/16;
k5(i) = 4*exp(0.8*x1) - 0.5*y1;
x1 = x(i) + h;
y1 = y(i) - 3*k1(i)*h/7 + 2*k2(i)*h/7 + 12*k3(i)*h/7 - 12*k4(i)*h/7 + 8*k5(i)*h/7;
k6(i) = 4*exp(0.8*x1) - 0.5*y1;
y(i+1) = y(i) + (7*k1(i)+32*k3(i)+12*k4(i) + 32*k5(i) + 7*k6(i))*h/90;
end
disp(y(1:5),"y(fifth order RK method)")
