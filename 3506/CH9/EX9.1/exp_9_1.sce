//Optical Fiber communication by A selvarajan
//example 9.1
//OS=Windows XP sp3
//Scilab version 5.5.1
clc;
clear all;
lambda=1.3*1e-6//wavelength in m
c=3*1e8//velocity of light in m/s
SNRoutdB=30//signal to noise ratio at outputin dB
SNRout=10^(SNRoutdB/10);//signal to noise ratio at output normal scale
new=c/lambda;//frequency in Hz
h=6.6e-34;//plancks constant
P=0.5e-3;//Input power in W
NFdB=4//noise figure in dB
NF=10^(NFdB/10);//noise figure in normal scale
SNRin=NF*SNRout//signal to noise ratio at input normal scale
delta_Be=P/(2*h*new*SNRin);//receiver bandwidth in Hz
mprintf('Signal to noise ratio at Input=%f',SNRin)
mprintf('\nReciever bandwidth is=%fx10^14Hz',delta_Be/1e14);// division by 1e14 to convert the unit from Hz to 10^14 Hz
// The answer given in textbook is wrong
