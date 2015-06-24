//Figure 4.23:Multiplication Property of CTFT
clear;
clc;
close;
W1 = -1:0.1:1;
W2 = -2:0.1:2;
W = -3:0.1:3;
//Fourier Transform of sinc funcion is square wave
XW1 = (1/%pi)*ones(1,length(W1)); //CTFT of x1(t)
XW2 = (1/(2*%pi))*ones(1,length(W2));//CTFT of x2(t)
XW = (1/2)*convol(XW1,XW2);//CTFT of x(t)=x1(t)*x2(t)
//X(jw) = linear convolution of X1(jw)and X2(jw)
figure
a = gca();
a.y_location = "origin";
a.x_location = "origin";
plot(W,XW);
xlabel('Frequency in Radians/Seconds---> W');
title('Multiplication Property X(jW)')