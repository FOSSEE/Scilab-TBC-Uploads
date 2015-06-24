// Exa 5.14
clc;
clear;
close;
// Given data
fa= 1;// in kHz
fa=fa*10^3;// in Hz
Vp=1.5;// in volt
f= 200;// in Hz
C=0.1;// in micro F
C=C*10^-6;// in F
R= 1/(2*%pi*fa*C);// in ohm
R=R*10^-3;// in k ohm
R=floor(R*10)/10;// in k ohm
fb= 20*fa;// in Hz
R_desh= 1/(2*%pi*fb*C);// in ohm
// Let
R_desh= 82;// in ohm
R_OM= R;// in k ohm
disp(R_OM,"Value of R_OM in k ohm")
CR= C*R;
// Vin= Vp*sin(omega*t)= 1.5*sin(400*t)
// v_out= -CR*diff(v_in) = -0.2827 Cos(400*%pi*t)// in micro volt
disp("Output Voltage")
disp("-0.2827 Cos(400*%pi*t)");
t=-1/800:0.00001:1/200;//
v_out=-0.2827*cos(400*%pi*t)// in micro volt
plot(t,v_out);
title("Output Voltage Waveform");
xlabel("Time in ms");
ylabel("Vout in Volts");
disp("Output Voltage waveform is shown in figure.")
