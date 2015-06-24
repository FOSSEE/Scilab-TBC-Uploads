//Exa 6.5
clc;
clear;
close;
//given data :
format('v',5);
EBW=50;//MHz in 3dB
//Formula : EBW(3dB)=OpticalBW(3dB)/sqrt(2)
OpticalBW=sqrt(2)*EBW;//in 3dB
disp(OpticalBW,"3dB Optical Bandwidth in MHz : ");