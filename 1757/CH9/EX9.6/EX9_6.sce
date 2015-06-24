//Example9.6  // to determine the center frequency of VCO lock and capture range of PLL
clc;
clear;
close;
R = 15 ; // K ohm
C = 0.12 ; // uF
Vcc = 12 ;

// the center frequency of VCO fo
fo = (1.2/4*R*C);
disp('The center frequency of VCO is is = '+string(fo)+ ' Hz ');

fo = 4 ; // KHz
// the lock range of PLL
fL = (8*fo/Vcc) ;
disp('The lock range of PLL is = '+string(fL)+ ' KHz/V ');

// the capture range of PLL
fc = ((fo-fL)/(2*%pi*3.6*10^3*C)^(1/2)) ;
disp('The lock range of PLL is = '+string(fc)+ ' Hz/V ');
