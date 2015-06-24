//laplace//
syms t s;
y= laplace('%e^(-t)+5*t+6*%e^(-3*t)',t,s);
disp(y,"ans=")
 
