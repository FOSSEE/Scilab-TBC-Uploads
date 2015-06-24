//Example11.3   // determine the resolution of 4-bit D/A converter
clc;
clear;
close;
VFS = 12 ;
N = 4 ;

// the resolution of 4-bit D/A converter is defined as
Resolution = VFS/(2^N-1) ;
disp('the resolution of 4-bit D/A converter is = '+string(Resolution)+ ' V ');
