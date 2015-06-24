//Mid-point formula
clc;
clear;
close();
format('v',8);
funcprot(0);
deff('[g]=f(x,y)','g= -y^2/(1+x)');
y0 = 1;
y1 = 0.95335;
x = 0.05;
h = 0.05;
i=0;
while x<0.2
    y2 = y0 - 0.1*y1^2/(1+x);
    disp(y2,'The Y :')
    y0 = y1;
    y1 = y2;
    x = x + h;
end
disp(y2,'The calculated value of y(0.2):');
x = 0.2;
act = 1/(1+log(1+x));
disp(act,'The exact value is of y(0.2): ');
err = act - y2;
disp(err,'The error is :');