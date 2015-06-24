// 3-Step Adams - Bashforth and 2- step Adam-Moulton formula
clc;
clear;
close();
format('v',8);
funcprot(0);
disp('Integral 0 to 2 exp(x)dx');
deff('[yd]=f(x,y)','yd = -y^2/(1+x)');

y0 = 1;
x0 = 0;
h = 0.05;
x1 = x0+h;
x2 = x1+h;
y2 = 0.91298;
y1 = 0.95348;
for i = 1:2
    yn = y2 + h*(23*f(x2,y2)-16*f(x1,y1)+5*f(x0,y0))/12;
    disp(yn,'yn(0) = ');
    yn_i = yn;
    yn_i = y2 + h*(5*f(x2+h,yn_i)+8*f(x2,y2)-f(x1,y1))/12;
    disp(yn_i , 'yn(i)');
    yn_i = y2 + h*(5*f(x2+h,yn_i)+8*f(x2,y2)-f(x1,y1))/12;
    disp(yn_i , 'yn(i)');
    y0 = y1;y1 = y2;y2 = yn_i;
    x0 = x1;x1 = x2;x2 = x2+h;
end
x = 0.2 ;
act = 1/(1+log(1+x));
disp(act,'The exact value is of y(0.2): ');
err = act - y2;
disp(err,'The error is :');