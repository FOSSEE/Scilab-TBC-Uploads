clc;
//page 748
//problem 14.3

//The distance d = 30 * 1.6 * 10^3 m;
d = 30 * 1.6 * 10^3;

//Frequency f = 4 * 10^9 Hz
f = 4 * 10^9;

//Wavelength w = c/f m 
w = 3*10^8 / f;

//Transmitter gain KT = 40 dB
KT = 10^4;

//Reciever gain KT = 40 dB
KR = 10^4;

//Reciever power PR = 10^-6 Watt
PR = 10^-6;

//Transmitter power PT
PT = PR*(4*%pi*d/w)^2/ (KT*KR);

disp('The transmitter output is '+string(PT)+' Watt')













