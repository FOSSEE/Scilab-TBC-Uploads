//Example12.4  // to determine the resolution of 12-bit A/D converter
clc;
clear;
close;
N =12 ;
Vin = 15 ;

// Resolution of an A/D converter
Resolution = Vin/(2^N-1);
disp('Resolution of an A/D converter is = '+string(Resolution)+ ' V ');
;
