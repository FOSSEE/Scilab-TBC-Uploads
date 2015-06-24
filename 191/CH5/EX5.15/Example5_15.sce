//Least square aproximation method with exponential functions
clc;
clear;
close();
xi = [0 0.25 0.4 0.5];
yi = [9.532 7.983 4.826 5.503];
wi = ones(1,4);
//data corresponding to linearised problem
Xi = [0 0.25 0.4 0.5];
Yi = [2.255 2.077 1.574 1.705];
wi = ones(1,4);
format('v',6);
//Representation of equation in matrix form
W = [sum(wi) sum(wi.*xi); sum(wi.*xi) sum(wi.*xi.*xi)];
Y = [sum(wi.*Yi); sum(wi.*Yi.*Xi)];
C = inv(W)*Y;
A = C(1);
B = C(2);
a = exp(2.281);
b = B;
disp(a, 'a = ');
disp(b, 'b = ');
//So the non linear system becomes
disp('9.532-a+7.983*exp(0.25*b)-a*exp(0.5*b)+4.826*exp(0.4*b)-a*exp(0.8*b)+5.503*exp(0.5*b)-a*exp(b) = 0');
disp('1.996*a*exp(0.25*b)-0.25*a*a*exp(0.5*b)+1.930*a*exp(0.4*b)-0.4*a*a*exp(0.8*b)+2.752*a*exp(0.5*b)-0.5*a*a*exp(b) = 0');
//Applying Newtons Method we get
a = 9.731;
b = -1.265;
disp(a , 'a = ');
disp(b , ' b = ');