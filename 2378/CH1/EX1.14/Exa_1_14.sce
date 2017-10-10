//Exa_1_14
//Graphical representation of fourier series
clc;
clear;
A = 1;
w = %pi;
tau = 2;
for i = 1: 101
    t(i) = tau * (i-1)/100;
    x(i) = A * t(i) / tau;
end
subplot(231);
plot(t,x);
ylabel('x(t)');
xlabel('t');
title('x(t) = A*t/tau');
for i = 1: 101
    x1(i) = A / 2;
end
subplot(232);
plot(t,x1);
xlabel('t');
title('One term');
for i = 1: 101
    x2(i) = A/2 - A * sin(w*t(i)) / %pi;
end
subplot(233);
plot(t,x2);
xlabel('t');
title('Two terms');
for i = 1: 101
    x3(i) = A/2 - A * sin(w*t(i)) / %pi - A * sin(2*w*t(i)) / (2*%pi);
end
subplot(234);
plot(t,x3);
ylabel('x(t)');
xlabel('t');
title('Three terms');
for i = 1: 101
    t(i) = tau * (i-1)/100;
    x4(i) = A/2 - A * sin(w*t(i)) / %pi - A * sin(2*w*t(i)) / (2*%pi) - A * sin(3*w*t(i)) / (3*%pi);
end
subplot(235);
plot(t,x4);
xlabel('t');
title('Four terms');
