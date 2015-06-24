//Simpson's Adaptive Quatrature
clc;
clear;
close();
format('v',10);
funcprot(0);
deff('[y]=f(x)','y=exp(x)');
a = 0.5;
b = 1;
h = (b-a)/2;
S1 = h*(f(a)+4*f((a+b)/2)+f(b))/3;
disp(S1,'S1 : ');

S2 = h*(f(a)+4*f((3*a+b)/4)+2*f((a+b)/2)+4*f((a+3*b)/4)+f(b))/6;
disp(S2,'S2 : ');

err = abs(S2-S1)/15;
disp(err,'An estimate of the error in S2 is : ' );

act = integrate('exp(x)','x',.5,1)
act_err = abs(act-S2);
disp(act_err,'The Actual error in S2 is : ');