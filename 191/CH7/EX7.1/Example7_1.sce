//Euler's Method
clc;
clear;
close();
format('v',8);
funcprot(0);
deff('[g]=f(x,y)','g= -y^2/(1+x)');
y = 1;
x = 0;
h = 0.05;
while x<0.2
    y = y - 0.05*y^2/(1+x);
    x = x + h;
    disp(y,x,'Value of y at x :');
end
disp(y,'The calculated value of y(0.2):');
x = 0.2;
act = 1/(1+log(1+x));
disp(act,'The exact value is of y(0.2): ');
err = act - y;
disp(err,'The error is :');