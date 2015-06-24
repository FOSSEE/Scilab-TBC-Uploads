//Example 2.12
clc
clear

function [f] = fun12(x)
    f  = x.^3 - x - 1;
endfunction

x = [0 1 2];
h = [x(2)-x(1) x(3)-x(2)];
lamdai = h(2)/h(1);
deli = 1 + lamdai;
f = fun12(x);

g = f(1)*lamdai^2 - f(2)*deli^2 + f(3)*(lamdai + deli);
lamda = -2*f(3)*deli / (g + sqrt(g^2 - 4*f(3)*deli*(f(1)*lamdai - f(2)*deli + f(3))));
xnew = x(3) + lamda*h(2);
xnew = round(xnew*10^5) / 10^5;
disp(xnew,"root = ")
