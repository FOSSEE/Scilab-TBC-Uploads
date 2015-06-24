//clear//
//Caption: Calculation of worst case Dynamic Range
//Example13.3
//page 465
clear;
clc;
close;
N = [5,10] ;//number of stations
alpha = 0.4;//attenuation in dB/Km
L = 0.5; //link length in Km
Lc = 1.0; // coupler-to-fiber loss in dB
L_thru = 0.9;// coupler throughput in dB
Li = 0.5;//Intrinsic coupler loss in dB
DR = (N-2)*(alpha*L+2*Lc+Li+L_thru);
disp(DR,'worst-case dyanmic range in dB for N =5 and 10 respectively DR =')
//Result
//worst-case dyanmic range in dB for N =5 and 10 respectively DR =   
//     10.8    28.8  
 
