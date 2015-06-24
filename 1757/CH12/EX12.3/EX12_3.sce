//Example12.3   // to determine the binary output of the 8-bit dual slope A/D converter
clc;
clear;
close;
Vin = 8.5 ;
VR = 10 ;
f = 2 ;  //MHz
N = 8 ;
C = 0.1*10^-6 ;
R = 2*10^3 ;

// the output of integrator is defined as 
// Viao(T1) = -(Vin/R*C)*T1 ;

// charging time of capacitor 
T1 = 2^N/f ;
disp('charging time of capacitor  is = '+string(T1)+ ' u sec');

// the integrator output
T1 = T1*10^-6 ;
Viao =-(Vin/(R*C))*T1;
disp('the integrator output is = '+string(Viao)+ ' V');

// the binary output of a dual slope A/D converter
Bn = (2^N*Vin)/VR;
disp('the decimal output of a dual slope A/D converter is = '+string(Bn)+ '   = 218' );

Bn=218;
Bn = dec2bin(Bn) ;
disp('  The binary output of a dual slope A/D converter is = '+string(Bn)+ ' ' );
