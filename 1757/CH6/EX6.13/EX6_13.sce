//Example6.13  // Determine the time constant of the integrator
clc;
clear;
close;
Vo = 20 ;
t = 1*10^-3 ;
VI = -1 ;  // at t =0 ;

// The output voltage of an integrator is define as
RC = t/10 ;
disp(' The time constant of the given filter is RC = '+string(RC)+ ' sec ');

R = 1*10^3 ;  // we assume 
C = RC/R ;
disp('The capacitor value is = '+string(C)+ '  F');
