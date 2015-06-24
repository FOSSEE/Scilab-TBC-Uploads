clc;
//page 413  
//problem 7.3

//The resistance R = 1000 Ohm                                                                               
R = 10^3;

//The capacitance C = 0.5*10^-6 F
C = 0.1*10^-6;

//Cutoff frequency for RC filter is f
f = 1/(2*%pi*R*C)

//White noise power spectral density n
n = 10^(-9);

//Noise power at filter output P
P = (%pi/2)*n*f;

disp('Noise power at output filter is '+string(P)+' Watt');

//Noise power at filter output P_new when cutoff frequency is doubled
P_new = (%pi/2)*n*2*f;

disp('Noise power at output filter when cutoff frequency is doubled is '+string(P_new)+' Watt');

//Ideal Low Pass filter Bandwidth B = 1000 Hz
B = 1000;

disp('Output Noise Power is '+string(n*B)+' Watt');

disp('Output Noise Power when cut-off frequency is doubled is '+string(2*n*B)+' Watt');

//Proportionality constant T = 0.01
T = 0.01;

//Output noise power O
O = n*(B^3)*(T^2)*(4/3)*(%pi)^2;

disp('Output Noise Power when signal is passed through a differentiator passed through ideal low pass filter '+string(O)+' Watt');

O_new = 8*n*(B^3)*(T^2)*(4/3)*(%pi)^2;

disp('Output Noise Power when signal is passed through a differentiator passed through ideal low pass filter and when cut-off frequency is doubled is '+string(O_new)+' Watt');




