//scilab 5.4.1
//Windows 7 operating system
//chapter 20 Cathode Ray Oscilloscope
clc
clear
sw=10//sw=sweep width in cm
n=5/2//n=number of cycles given by vertical deflection plates
c=sw/n//c=centimetres occupied by one cycle of signal
ct=0.1//ct=calibrated time base of CRO in ms/cm
t=ct*c//t=time interval corresponding to centimetres occupied by one cycle of signal
T=t/5//T=time period of the signal,since the scale is 5 times magnified
f=1/T//f=frequency of the signal
disp("kHz",f,"The frequency of the signal is =")
