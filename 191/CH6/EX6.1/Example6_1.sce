//Numerical Differentiation
clc;
clear;
close();
format('v',9);
deff('[y]=f(x)','y=exp(-x)');

x0 = ones(:,8);
h = [1 .2 .1 .02 .01 .002 .001 .0002];
x1 = 1+h;
f0 = f(x0);
f1 = f(x1);
dif = (f1-f0)./h;
max_trun_err = exp(-1).*h/2;
act_err = abs(- exp(-1)-dif);
answer = [h' f0' f1' dif' max_trun_err' act_err'];
disp(answer,'    h        f0            f1        f1-f0/h     he^-1      |Actual Error|');
x = (0:.0002:3);
plot(x,f(x));