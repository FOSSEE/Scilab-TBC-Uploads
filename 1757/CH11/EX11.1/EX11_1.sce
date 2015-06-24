//Example11.1  // to determine the full scale voltage of D/A
clc;
clear;
close;
Vref = 12 ;
Rf = 10 ; // K ohm
R = 5 ; // K ohm

// the full scale voltage of D/A converter 
VFS = Vref*(Rf/R) ;
disp('the full scale voltage of D/A converter VFS is = '+string(VFS)+ ' V ');
