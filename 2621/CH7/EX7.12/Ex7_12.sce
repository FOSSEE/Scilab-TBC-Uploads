// Example 7.12
clc;
clear;
close;
// Given data
format('v',6);
R= 10*10^3;// in Ω
C1= 0.1*10^-6;// in F 
C2= 0.0025*10^-6;// in F 
f_H= 1/(2*%pi*R*C2);//higher cut-off frequency in Hz
f_H= f_H*10^-3;// in kHz
f_L= 1/(2*%pi*R*C1);//lower cut-off frequency in Hz
BW= f_H-f_L*10^-3;// bandwidth in kHz
disp(f_H,"The higher cut-off frequency in kHz is : ")
disp(f_L,"The lower cut-off frequency in Hz is : ")
disp(BW,"The bandwidth in kHz is : ")
