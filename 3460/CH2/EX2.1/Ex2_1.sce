//calculate gain of circuit in decibel
clc;
clear all;
V_in=1; //peak to peak voltage
V_out=3; //peak to peak voltage
Av=V_out/V_in;
//but we need to find gain in decibel
Adb_max=20*log10(Av);
disp(+'dB',Adb_max, 'gain of the circuit in decibel is : ')

//need to find cutoff point in decibels
fc_point=Adb_max-3;
disp('dB',fc_point,'cutoff point in decibel is : ')

//find frequency at 20dB down from Adb_max
down_20dB=Adb_max-20 
//since decade represents a tenfold increase and roll off is 20dB/decade
freq=10*1000; //frequecy is in Hz
disp(+'Hz',freq,'frequency at 20dB down from Adb(max) is :' )
