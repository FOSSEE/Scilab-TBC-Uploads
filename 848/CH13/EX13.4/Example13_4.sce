//clear//
//Caption: Calculation of power margin between transmitter and receiver for Star architectures
//Example13.4
//page 466
clear;
close;
clc;
N = [10,50]; //number of stations
alpha = 0.4; //attenuation in dB/Km
L = 0.5 ;//distance in Km
Lexcess = [0.75,1.25]; //excess loss in dB for N =10 and 50
Lc = 1.0; //connector loss in dB
Ps_Pr(1) = Lexcess(1)+alpha*2*L+2*Lc+10*log10(N(1)); 
Ps_Pr(2) = Lexcess(2)+alpha*2*L+2*Lc+10*log10(N(2)); 
disp(Ps_Pr(1),'The power margin in dB between the transmitter and receiver for N=10 is Ps-Pr =')
disp(Ps_Pr(2),'The power margin in dB between the transmitter and receiver for N=50 is Ps-Pr =')
//Result
//The power margin in dB between the transmitter and receiver for N=10 is Ps-Pr = 13.15  
//The power margin in dB between the transmitter and receiver for N=50 is Ps-Pr = 20.6397  
