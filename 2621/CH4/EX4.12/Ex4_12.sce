// Example 4.12
clc;
clear;
close;
format('v',7);
// Given data
fa= 1;// in kHz
fa= fa*10^3;// in Hz
Vp= 1.5;// in V
f= 200;// in Hz
C= 0.1*10^-6;// in F
t= poly(0,'t');
R= 1/(2*%pi*fa*C);// in Ω
R= 1.5;// in kΩ (standard value)
fb= 20*fa;// in Hz
R_desh= 1/(2*%pi*fb*C);// in Ω
R_desh= 82;// in Ω (standard value), so
R_OM= R;// in kΩ
// Vin= Vp*sin(omega*t)= Vp*sin(2*%pi*f)*t
disp("The input votage : Vin = "+string(Vp)+ " sin(400*%pi*t)")
RC= R*10^3*C;// in ΩF
V= -RC*Vp*400*%pi;
//Vout= -RC*dVin/dt= -RC*Vp*400*%pi*cos(400*%pi*t)
disp("The output voltage : Vout = "+string(V)+" cos(400*%pi*t)")
x=[0:0.1:5*%pi/2];
plot(V*cos(x))
title("output Waveform");
xlabel("---- Time ---->");
ylabel("---- output voltage ---->");
disp("output Waveform is shown in figure.")




