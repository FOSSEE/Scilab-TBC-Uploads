syms t s;
y = laplace('A*%e^(-a*t)',t,s);
disp(y,"Laplace transform = ")