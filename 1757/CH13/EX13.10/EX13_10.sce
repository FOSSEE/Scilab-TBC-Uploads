//Example13.10  // Determine the frequency of the monostable multivibrator
clc;
clear;
close;
R1 = 5*10^3 ;
R2 =15*10^3 ;
C = 0.01*10^-6 ;
R = 12*10^3 ;

// the output of monostable multivibrator is defined as
f = 1/(R*C*(log(1+(R2/R1))));
disp('the output of monostable multivibrator is = ' +string(f)+ ' Hz');
