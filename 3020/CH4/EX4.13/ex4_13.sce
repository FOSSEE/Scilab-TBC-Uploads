clc;
clear all;
V = 1000; // Volume of hall in cubic meter
s = 400; // Surface area of hall in square meters
a = 0.2; // Average absorption coefficient of hall in sabine
T = (0.163*V)/(a*s);//'Reverberation time of hall 
disp('s',T,'Reverberation time of hall is')
// there is slight variation in the answer.. there is mistake in the book.. checked in calculator also..
