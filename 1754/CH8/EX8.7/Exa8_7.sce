//Exa 8.7
clc;
clear;
close;
//Given data :
fmin=20;//in Hz
fmax=20;//in kHz
Cmin=30;//in pF
Cmax=300;//in pF
//Formula : fo=1/(2*%pi*R*C))
disp("Minimum Fequeny correspond to maximum capacitance.")
R=1/(2*%pi*fmin*Cmax*10^-12)
disp(R/10^6,"Required resistance in Mohm : ");