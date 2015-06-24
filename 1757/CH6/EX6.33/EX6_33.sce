//Example6_33  // To calculate phase shift between two extremes 
clc;
clear;
close;
C = 0.22*10^-6 ;
R = 1*10^3 ;
f = 1*10^3 ;

// the cut off frequency of phase shifter 
fc = 1/(2*%pi*R*C) ;
disp('the cut off frequency of phase shifter is = ' +string(fc)+ 'Hz');

// the phase shift
f = 1 ; // KHz
fc = 7.23 ;  // KHz 
PS = -2*atand(f/fc);
disp('The phase shift is = '+string(PS)+ ' ');
