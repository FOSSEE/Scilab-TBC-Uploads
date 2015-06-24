//Example11.11 // to find the resolution and analog output voltage of 8-bit D/A converter
clc;
clear;
close;
VFS = 10 ;
N = 8 ;
BI = 10101111 ;  BI = 11100011 ;  BI = 00101001 ; BI = 01000110

// the resolution of 8-bit D/A converter is defined as
Resolution = VFS/(2^N-1) ;

// An analog output voltage of D/A converter is given by
// Vo = Resolution*(2^-0*b0+2^-1*b1+....+2^-N*bn-1)
// Vo = Resolution*(2^-0*b0+2^-1*b1+2^-2*b2+2^-3*b3+2^-4*b4+2^-5*b5+2^-6*b6+2^-7*b7);

// For the BI 10101111 output analog voltage is
BI = '10101111';
BI = bin2dec(BI);
Vo = Resolution*BI ;
disp('For the BI 10101111 output analog voltage is = '+string(Vo)+ ' V ');

// For the BI 11100010 output analog voltage is
BI = '11100010';
BI = bin2dec(BI);
Vo = Resolution*BI ;
disp('For the BI 11100010 output analog voltage is = '+string(Vo)+ ' V ');

// For the BI 00101001 output analog voltage is
BI = '00101001';
BI = bin2dec(BI);
Vo = Resolution*BI ;
disp('For the BI 00101001 output analog voltage is = '+string(Vo)+ ' V ');

// For the BI 01000110 output analog voltage is
BI = '01000110';
BI = bin2dec(BI);
Vo = Resolution*BI ;
disp('For the BI 01000110 output analog voltage is = '+string(Vo)+ ' V ');

