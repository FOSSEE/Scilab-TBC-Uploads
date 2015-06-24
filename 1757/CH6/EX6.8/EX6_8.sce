// Example6.8  // determine the common mode rejection ratio CMRR
clc;
clear;
close;
// R2/R1 = 10 ;
// R4/R3 = 11 ;

// the output of the difference amplifier is given by
// Vo = (((R4)/(R3+R4))*(((1+(R2/R1))*VI2))-((R2/R1)*VI1));

// putting R1 R2 R3 R4 value in above equation we get Vo as

// Vo =(121/12)*VI2-10VI1 ;                                 equation 1

// the differential mode input of difference amplifier is given by
// Vd = VI2-VI1 ;                                               eqution 2

// the common mode input of difference amplifier is given by
// VCM = (VI2+VI1)/2 ;                                         equation 3

// from equation 2 and 3 

// VI1 = VCM-Vd/2 ;                                          equation 4

// VI2 = VCM+Vd/2 ;                                          equation 5

// substitute equation 4 and 5 in 1  we get 
// Vo = (VCM/12)+(241Vd/24);                               equation6

// Vd = Ad*Vd+ACM*VCM ;                                  equation 7

//equation from equation 6 and 7 we get

Ad = 241/24 ;
ACM = 1/12 ;

// the common mode rejection ratio CMRR is 
CMRR = abs(Ad/ACM);
disp('The common mode rejection ratio CMRR is  = '+string(CMRR)+' ');

// in decibal it can be expressed as

CMRR = 20*log10(CMRR);
disp('The common mode rejection ratio CMRR in decibel is  = '+string(CMRR)+' dB ');
