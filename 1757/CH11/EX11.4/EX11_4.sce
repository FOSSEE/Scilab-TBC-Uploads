//Example11.4   // determine the number of bit required to design a 4-bit D/A converter
clc;
clear;
close;
VFS = 5 ;
Resolution = 10*10^-3 ; // A

// the resolution of 4-bit D/A converter is defined as
// Resolution = VFS/(2^N-1) ;
N = (VFS/Resolution)+1 ;   
N = log10(N)/log10(2);
disp('the number of bit required to design a 4-bit D/A converter is = '+string(N)+ '   = 9 ');

