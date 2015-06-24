//laplace//
syms t s;
y=laplace('5+6*t^2+3*%e^(-2*t)',t,s);
disp(y,"ans=")
