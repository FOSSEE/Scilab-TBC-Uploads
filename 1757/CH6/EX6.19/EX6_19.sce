//Example6.19  // To determine the magnitude gain of the integrator
clc;
clear;
close;
Vin = 1 ;
f = 50*10^3 ;
Rf = 120*10^3 ;
R = 10*10^3 ;
C = 0.1*10^-9 ;

// the magnitude gain of the integrator is given by
//A = (Rf/R)/(sqrt(1+(f/fc)^2));

// the cutoff frequency of the integrator 
fc = 1/(2*%pi*Rf*C);
disp('The cutoff frequency of the integrator is = '+string(fc)+ ' Hz');


A = (Rf/R)/(sqrt(1+(f/fc)^2));
disp('The gain of the integrator is = '+string(A)+ ' ');
