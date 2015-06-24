//calculate receiver's noise figure
clc;
clear all;
SN_in=48; //input signal to noise ration given
SN_out=12; //output signal to noise ratio given
NF=10*log10(48/12); 
disp(+'dB',NF,'receiver noise figure is : ')
