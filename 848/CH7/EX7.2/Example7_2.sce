//clear//
//Caption: To find out signal-to-noise ratio and probability of error for given 'Q'
//Example7.2
//Page 258
clear;
clc;
close;
Q = 6;
Pe = (1/2)*(1-erf(Q/sqrt(2)));
S_N_dB = 10*log10(2*Q);
disp(Pe,'Probability of error Pe(Q) =')
disp(S_N_dB,'Signal-to-noise ratio in dB S/N =') 
//Result
//Probability of error Pe(Q) = 9.866D-10  
//Signal-to-noise ratio in dB S/N = 10.791812 
