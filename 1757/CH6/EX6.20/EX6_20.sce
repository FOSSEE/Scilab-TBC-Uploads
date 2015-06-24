//Example6.20  // To determine the magnitude gain of the differentiator
clc;
clear;
close;
Vin = 1 ;
f = 50*10^3 ;
R = 75*10^3 ;
R1 = 50*10^3 ;
C = 0.1*10^-9 ;

// the magnitude gain of the differentiator is given by
//A = (f/fa)/(sqrt(1+(f/fb)^2));

// the break frequency fa is defined as
fa = 1/(2*%pi*R1*C) ;
disp('the break frequency fa is = '+string(fa)+ ' Hz ');

// the break frequency fb is defined as
fb = 1/(2*%pi*R*C) ;
disp('the break frequency fb is = '+string(fb)+ ' Hz ');


A = (f/fa)/(sqrt(1+(f/fb)^2));
disp('The gain of the differentiator is = '+string(A)+ ' ');

