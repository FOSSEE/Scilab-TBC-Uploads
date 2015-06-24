clc;
clear all;
I=1e4 //in W/(m*m)
I0=1e-12 //in W/(m*m)
B=10*log10(I/I0);//intensity level
disp(+'dB',B,"intensity level = ")
