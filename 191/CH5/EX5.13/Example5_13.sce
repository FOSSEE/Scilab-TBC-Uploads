//Linear Least square aproximation method
clc;
clear;
close();
xi = [-5 -3 1 3 4 6 8];
yi = [18 7 0 7 16 50 67];
wi = [1 1 1 1 20 1 1];
format('v',7);
//Representation of equation in matrix form
W = [sum(wi) sum(wi.*xi); sum(wi.*xi) sum(wi.*xi.*xi)];
Y = [sum(wi.*yi); sum(wi.*yi.*xi)];
A = inv(W)*Y;
a0 = A(1);
a1 = A(2);
x = poly(0,'x');
p1x = a1*x + a0;
disp(p1x, 'The approximating polynomial is :');
x = linspace(-5,8,1000);
p1x = a1*x + a0;
subplot(2,1,1);
plot(x,p1x);
plot(xi,yi,'o');

wi = [1 1 1 1 1 1 1];
//Representation of equation in matrix form
W = [sum(wi) sum(wi.*xi); sum(wi.*xi) sum(wi.*xi.*xi)];
Y = [sum(wi.*yi); sum(wi.*yi.*xi)];
A = inv(W)*Y;
a0 = A(1);
a1 = A(2);
x = poly(0,'x');
p1x = a1*x + a0;
disp(p1x, 'The approximating polynomial is :')
x = linspace(-5,8,1000);
p1x = a1*x + a0;
subplot(2,1,2);
plot(x,p1x);
plot(xi,yi,'o');