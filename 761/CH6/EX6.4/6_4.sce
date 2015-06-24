clc;
//page no 236
//prob no. 6.4
//A receiver with sensitivity 0.5uV & blocking dynamic range 70dB.
//Determination of vpltage signal V1 
P1_P2=70;V2=0.5*10^-6;//let
V1=V2*10^(P1_P2/20);
 disp('mV',V1*1000,'The voltage value of signal is');