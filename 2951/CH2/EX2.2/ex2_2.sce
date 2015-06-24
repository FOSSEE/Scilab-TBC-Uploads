clc;
clear;

/// e^j(*2*pi*f*t+theta)

syms pi f0 t theta A
K=2*pi*f0*t+theta;

disp("the given signal is complex");
disp("e^(j*theta) can be written as");
disp("cos(theta)+j*sin(theta)");

Re=A*cos(K);
Img=A*sin(K);
mag=sqrt(Re^2+Img^2);

disp(Re,"real part is ");
disp(Img,"the imaginary part ");
disp(mag,"Magnitude of signal is |A|=");
disp(K,"phase of the signal ");
