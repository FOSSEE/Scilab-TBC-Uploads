//Example 15.12.
clc
format(6)
disp("(a) The series resonant frequencies of the crystal is")
fs=1/(2*%pi*sqrt(0.5*0.06*10^-12))  //in Hz
x1=fs*10^-3 //in kHz
disp(x1,"  fs(kHz) = 1 / 2*pi*sqrt(L*Cs) =")
format(5)
fs=(2*%pi*(918.9*10^3)*0.5)/(5*10^3)
disp(fs,"Q factor of the crystal at fs = omegaS*L / R = 2*pi*fs*L / R =")
disp("(b) The parallel resonant frequency of the crystal is")
fp=(1/(2*%pi))*sqrt((1.06*10^-12)/(0.5*(0.06*10^-12)*(1*10^-12))) // in Hz
x1=fp*10^-3
disp(x1,"  fp(kHz) = 1/2pi * sqrt((Cs+Cp)/(L*Cs*Cp)) =")
fp=(2*%pi*(946*10^3)*0.5)/(5*10^3)
disp(fp,"Q factor of the crystal at fp = omegaS*L / R = 2*pi*fs*L / R =")