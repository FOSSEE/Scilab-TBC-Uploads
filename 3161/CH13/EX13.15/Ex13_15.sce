clc;
//page 718
//problem 13.15

//Bit interval T = 1/10^6 = 10^-6 sec 
T = 10^-6

//White Noise Power Spectral Density n/2 = 10^-9 W/Hz
n = 2*10^-9

//Power required Ps = Eb/T, where Eb = energy per bit

//For information system feedback system Eb = n
Ps = n/T

disp('power required for information system feedback system is '+string(Ps)+' Watt')

//For optimal system Ps = (0.69 * n)/T
Ps = (0.69 * n)/T;

disp('power required for optimal system is '+string(Ps)+' Watt')
