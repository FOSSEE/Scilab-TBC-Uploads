// Example6.9  // determine Vo when 1) VI1 = 2 V VI2 = -2 V and 2) VI1 = 2 V VI2 = 2 V
//                                      and common mode rejection ratio CMRR
clc;
clear;
close;
R1 = 10*10^3 ; // ohm
R2 = 20*10^3 ; // ohm
R3 = 10*10^3 ; // ohm
R4 = 22*10^3 ; // ohm


// the output of the difference amplifier is given by
// Vo = (((R4)/(R3+R4))*(((1+(R2/R1))*VI2))-((R2/R1)*VI1));

// Case 1 when VI1 = 2 V VI2 = -2 V
VI1 = 2 ;
VI2 = -2 ;

Vo = (((R4)/(R3+R4))*(((1+(R2/R1))*VI2))-((R2/R1)*VI1));
disp('The output of the difference amplifier is  = '+string(Vo)+' V ');

// case 2 when VI1 = 2 V VI2 = 2 V
VI1 = 2 ;
VI2 = 2 ;

Vo = (((R4)/(R3+R4))*(((1+(R2/R1))*VI2))-((R2/R1)*VI1));
disp('The output of the difference amplifier is  = '+string(Vo)+' V ');

// the common mode input of difference amplifier is given by
VCM = (VI2+VI1)/2 ;
disp('the common mode input of difference amplifier is = '+string(VCM)+' ');

// the common mode gain ACM of difference amplifier is given by
ACM = Vo/VCM
disp('the common mode gain ACM of difference amplifier is = '+string(ACM)+' ');

// the differential gain of the difference amplifier is given 
Ad = R2/R1 ; 
disp('the differential gain of the difference amplifier is = '+string(Ad)+' ');

// the common mode rejection ratio CMRR is 
CMRR = abs(Ad/ACM);
disp('The common mode rejection ratio CMRR is  = '+string(CMRR)+' ');

// in decibal it can be expressed as
CMRR = 20*log10(CMRR);
disp('The common mode rejection ratio CMRR in decibel is  = '+string(CMRR)+' dB ');

