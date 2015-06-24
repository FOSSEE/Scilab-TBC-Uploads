// Example 5.8
clc;
clear;
close;
// Given data
format('v',6);
R= 12*10^3;// in Ω
R1= 120*10^3;// in Ω
Rf= 1*10^6;// in Ω
C= 0.1*10^-6;// in F
Vsupply= 12;// in V
Vsat= 10;//in V
//Part (i) : Signal frequency,
f= Rf/(4*R1*R*C);// in Hz
f= f*10^-3;// in kHz
disp("Part (i) : The signal frequency : "+string(f)+" kHz")
// Part (ii) : Amplitude of triangular wave,
Vpp= 2*R1/Rf*Vsat;// Vp-p
disp("Part (ii) : Amplitude of the triangular wave is : "+string(Vpp)+" Vp-p")
// Amplitude of square wave,
Vpp= Vsat-(-Vsat);//Vp-p
disp("Amplitude of the square wave is : "+string(Vpp)+" Vp-p")
