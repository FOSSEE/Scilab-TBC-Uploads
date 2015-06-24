//Example6_36  // Calculate CMRR ratio
clc;
clear;
close;
Ad = 10.24 ;
Acm = 0.48 ;

// the common mode rejection ratio CMRR is defined as
CMRRdB = 20*log10(Ad/Acm);
disp('THe common mode rejection ratio is = '+string(CMRRdB)+ ' dB' );
