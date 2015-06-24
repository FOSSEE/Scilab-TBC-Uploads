// Exa 6.10
clc;
clear;
close;
format('v',7)
// Given data
Af = -100;// unit less
Vin = 0.06;// in V
Vout = Af*Vin;// in V
Vin = 50;// in mV
Vin = Vin * 10^-3;// in V
A = Vout/Vin;// unit less
//Af = A/(1+(A*Beta));
Beta = (abs(A)-abs(Af))/(Af*A);// unit less
disp(Beta,"The value of ß is");
Amount = 20*log10(abs( 1/(1+(-Af*Beta)) ));// in dB
disp(Amount,"The Amount of feed back in dB is");
