//Exa 7.3
clc;
clear;
close;
//given data :
disp("Open mouth aperture, D = 10*lambda");
disp("Power gain : GP = 6*(D/labda)^2");
GP=6*10^2;//unitless
GPdB=10*log10(GP)
disp(GPdB,"Power gain in dB : ");