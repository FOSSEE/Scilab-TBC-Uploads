clc;
clear all;
I1=25.2 //in Wm^-2
I2=0.90 //in Wm^-2
B=10*log10(I1/I2) //Relative loudness of sound in dB
disp(+'dB',B,'Relative loudness of sound = ')
