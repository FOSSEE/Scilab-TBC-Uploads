//Exa 3.9
clc;
clear;
close;
//Given data :
FibreLoss=20;//in dB
//Pat (a)
lambda_a=1.3;///in um
loss_a=1.5;//in dB/Km
//Repeater spacing 
la=FibreLoss/loss_a;//in Km
disp(la,"At wavelength of 1.3 micro meter, repeter spacing in Km : ");
//Pat (b)
lambda_b=1.5;///in um
loss_b=0.5;//in dB/Km
//Repeater spacing 
lb=FibreLoss/loss_b;//in Km
disp(lb,"At wavelength of 1.5 micro meter, repeter spacing in Km : ");