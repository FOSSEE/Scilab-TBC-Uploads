//clc()
//dy/dx = -2*x^3 + 12*x^2 - 20*x + 8.5
//therefore, y = -0.5*x^4 + 4*x^3 - 10*x^2 + 8.5 + c
x1 = 0;
y1 = 1;
h = 0.5;
c =-(-0.5*x1^4 + 4*x1^3 - 10*x1^2 + 8.5*x1 - y1);
x = 0:0.5:4;
disp(x,"x = ")
y = -0.5*x^4 + 4*x^3 - 10*x^2 + 8.5*x + c;
disp(y,"true values of y = ")
fxy = -2*x^3 + 12*x^2 - 20*x + 8.5;
y2(1) = y(1);
e(1) = (y(1) - y2(1)) * 100 / y(1);
for i = 2:9
    y2(i) = y2(i-1) + fxy(i-1)*h;
    e(i) = (y(i) - y2(i))*100/y(i);
end
disp(y2,"y by euler method =")
disp(e,"error =")
