//laplace//
syms t s;
y=laplace('3- %e^(-3*t)',t,s);
disp(y,"ans=")
