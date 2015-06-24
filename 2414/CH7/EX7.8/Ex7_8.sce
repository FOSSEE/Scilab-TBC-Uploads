clc;
close();
//page no 235
//prob no. 7.8
delta_f=400;   //Hz
fm=2000;   //Hz
B=delta_f/fm;   //
disp(B,'The modulation index is');
disp('(For B<=2.5 , the signal is NBFM)');
Bt=2*fm;  
mprintf('The transmission bandwidth Bt= %i Hz ',Bt)
