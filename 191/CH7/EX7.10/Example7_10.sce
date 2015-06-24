// Runge- Kutta Methods
clc;
clear;
close();
format('v',8);
funcprot(0);
disp('Integral 0 to 2 exp(x)dx');
deff('[t]=f(x,y)','t=-y^2/(1+x)');
yn = 1;
xn = 0;
h = 0.05;
for i = 1:4
    k1 = f(xn,yn);
    k2 = f(xn+0.5*h,yn+.5*h*k1);
    k3 = f(xn+0.5*h,yn+.5*h*k2);
    k4 = f(xn+h,yn+h*k3);
    yn_1 = yn + h*(k1+2*k2+2*k3+k4)/6;
    n = i-1;
    ann(:,i) = [n k1 k2 k3 k4 yn_1]';
    yn = yn_1;
    xn = xn+h;
end

disp(ann,'Calculated integration : ');