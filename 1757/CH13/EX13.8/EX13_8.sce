//Example13.8  // to design astable multivibrator 
clc;
clear;
close;
f = 25*10^3 ;

// The output frequency of practical astable multivibrator is defined as
//  f = 1/(2*R*C);
C = 0.1*10^-6 ; // uF   we choose
R = 1/(2*f*C);
disp('The value of resistor R is = '+string(R)+ ' ohm ' );
