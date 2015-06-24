//Euler's trapezoidal predictor-corrector pair
clc;
clear;
close();
format('v',8);
funcprot(0);
deff('[g]=f(x,y)','g= -y^2/(1+x)');
y = 1;
x = 0;
h = 0.05;
i=0;
while x<0.2
    y0 = y - 0.05*y^2/(1+x);
    disp(y0,'The Y0 :')
    y1 = y - h*(y^2/(1+x)+y0^2/(1+x+h))/2;
    disp(y1,'The Y1 :')
    y2 = y - h*(y^2/(1+x)+y1^2/(1+x+h))/2;
    disp(y2,'The Y2 :')
    y = y2;
    x = x + h;
end
disp(y2,'The calculated value of y(0.2):');
x = 0.2;
act = 1/(1+log(1+x));
disp(act,'The exact value is of y(0.2): ');
err = act - y2;
disp(err,'The error is :');