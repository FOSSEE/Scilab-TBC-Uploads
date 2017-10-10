//Numerical Differentiation
clc;
clear;
close();
format('v',9);
deff('[y]=f(x)','y=exp(-x)');
h = [1 .2 .1 .02 .01 .002 .001 .0002];
x0 = 1 - h;
x1 = ones(1,8);
x2 = 1+h;
f0 = f(x0);
f1 = f(x1);
f2 = f(x2);
dif = (f2-f0)./(2*h);
max_trun_err = exp(h-1).*h.^2/6;
act_err = abs(- exp(-1)-dif);
answer = [h' f0' f2' dif' max_trun_err' act_err'];
disp(answer,'    h        f0            f2       f2-f0/2h  h^2*exp(h-1)/6 |Actual Error|');
disp('truncation error does not exceed h^2*exp(h-1)/6')
x = (0:.0002:3);
plot(x,f(x));