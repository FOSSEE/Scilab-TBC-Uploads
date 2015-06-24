// find period of output pulses ,minimum and maximum pulse width, quiescent pulse width
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 23-10, page 927

clear;clc; close;
	
// Given data
C=0.01*10^-6;// capacitance in faraday
R=9.1*10^3;// resistance in ohms
Vcc=12;// in volts
f=2.5*10^3;// frequency in hertz
Vmod=2;// peak voltage

// Calculations
T=1/f;// period of output pulses
UTP=2*Vcc/3;// upper trip point in volts
UTPmin=UTP-Vmod;// minimum upper trip point in volts
UTPmax=UTP+Vmod;// maximum upper trip point in volts
W=1.1*R*C;// quiescent pulse width  
Wmin=-R*C*log(1-(UTPmin/Vcc));// minimum pulse width
Wmax=-R*C*log(1-(UTPmax/Vcc));// maximum pulse width
disp("seconds",T,"period of output cycle=")
disp("Volts",UTPmin,"Minium UTP=")
disp("Volts",UTPmax,"Maxium UTP=")
disp("seconds",W,"Quiescent pulse width=")
disp("seconds",Wmin,"minimum pulse width=")
disp("seconds",Wmax,"maximum pulse width=")

// Result
// Period of output pulses is 400 Microseconds
// Quiescent pulse width is 100 Micro seconds
// Minimum UTP is 6 Volts
// Maximum UTP is 10 Volts
// Minimum pulse width is 63.1 Microseconds
// Maximum pulse width is 163 Microseconds