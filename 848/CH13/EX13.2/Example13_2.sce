//clear//
//Caption: Calculation of Number stations for given loss
//Example13.2
//page 465
clear;
clc;
close;
alpha = 0.4; //attenuation in dB/Km
L_tap = 10; // coupling loss in dB
L_thru = 0.9; // coupler throughput in dB
Li = 0.5; //Intrinsic coupler loss in dB
Lc = 1.0; // coupler-to-fiber loss in dB
L = 0.5;  //link length in Km
Pbudget_LED = 38; // power loss between source and receiver in dB for LED source
Pbudget_LASER = 51;//power loss between source and receiver in dB for LASER source
N_LED = (Pbudget_LED+alpha*L-2*L_thru-2*L_tap)/(alpha*L+2*Lc+Li+L_thru)
N_LASER = (Pbudget_LASER+alpha*L-2*L_thru-2*L_tap)/(alpha*L+2*Lc+Li+L_thru)
disp(ceil(N_LED),'Number of stations allowed for given loss of 38 dB with LED source')
disp(floor(N_LASER),'Number of stations allowed for given loss of 51 dB with LASER source')
//Result
//Number of stations allowed for given loss of 38 dB with LED source   
//     5.  
//Number of stations allowed for given loss of 51 dB with LASER source   
//    8.  
