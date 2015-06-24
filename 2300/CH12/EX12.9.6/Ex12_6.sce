//scilab 5.4.1
//Windows 7 operating system
//chapter 12 Modulation and Demodulation
clc
clear
R=0.2*(10^6)//R=load resistance in ohms in a diode detector 
C=150*(10^-12)//C=capacitance in farad in a diode detector 
//fmh=wmh/(2*%pi)where fmh=highest modulation frequency that can be detected with tolerable distortion and wmh=corresponding angular frequency
ma=0.5//ma=modulation factor or depth of modulation
fmh=(1/(2*%pi*ma*R*C))/1000
format("v",6)
disp("kHz",fmh,"The required frequency is fmh=")

