//clear//
//Caption: Calculation of power budget for optical link
//Example13.1
//page 464
clear;
clc;
close;
N = [5,10,50]; //number stations
alpha = 0.4;//attenuation in dB/Km
L_tap = 10;// coupling loss in dB
L_thru = 0.9;// coupler throughput in dB
Li = 0.5;//Intrinsic coupler loss in dB
Lc = 1.0; // coupler-to-fiber loss in dB
L = 0.5; //link length in Km
fiber_Loss = alpha*L; //fiber loss in dB
Pbudget = N*(alpha*L+2*Lc+Li+L_thru)-alpha*L-2*L_thru+2*L_tap;
disp(fiber_Loss,'fiber loss in dB for L =500 m')
disp(Pbudget,'power budget in dB for optical link when N = 5,10 and 50 stations respectively =')
//Result
//fiber loss in dB for L =500 m   
//     0.2  
//power budget in dB for optical link when N = 5,10 and 50 stations respectively =   
//    36.    54.    198.  
