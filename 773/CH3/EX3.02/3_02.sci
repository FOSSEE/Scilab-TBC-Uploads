//laplace//
syms t s;
f=%e^(-3*t);
y=laplace('%e^(-3*t)',t,s);
disp(y,"G(s)=")
