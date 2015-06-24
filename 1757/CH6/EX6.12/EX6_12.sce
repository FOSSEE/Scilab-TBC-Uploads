//Example6.12  // Determine the time constant of the integrator
clc;
clear;
close;
Vo = 10 ;
t = 2*10^-3 ;
VI = -1 ;  // at t =0 ;

// The output voltage of an integrator is define as
RC = t/10 ;
disp(' The time constant of the given filter is RC = '+string(RC)+ ' sec ');
