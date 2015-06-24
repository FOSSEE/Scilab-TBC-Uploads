clc;
close();
//page no 235
//prob no. 7.9
delta_f=8000;   //Hz
fm=100;   //Hz
B=delta_f/fm;   //
disp(B,'The modulation index is');
disp('(For B>=50 , the signal is VWBFM)');
Bt=2*delta_f;  
mprintf('The transmission bandwidth Bt= %i Hz ',Bt)
