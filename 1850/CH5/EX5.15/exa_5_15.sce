// Exa 5.15
clc;
clear;
close;
// Given data
fa= 1;// in kHz
fa=fa*10^3;// in Hz
Vp=1.5;// in volt
C=0.1;// in micro F
C=C*10^-6;// in F
// Part (a)
R= 1/(2*%pi*fa*C);// in ohm
R=R*10^-3;// in k ohm
R=floor(R*10)/10;// in k ohm
fb= 20*fa;// in Hz
R_desh= 1/(2*%pi*fb*C);// in ohm
// Let
R_desh= 82;// in ohm
R_OM= R;// in k ohm
disp(R_OM,"Value of R_OM in k ohm")

// Part(b)
// given data
Vp=1.5;// in volt
f= 200;// in Hz
// v_in= Vp*sin(omega*t) = sin(2*%pi*f*t) = sin(2000*omega*t)
// v_out= -CR*diff(v_in) = -0.942 Cos(2000*%pi*t)// in micro volt
disp("Output Voltage")
disp("-0.942 Cos(2000*%pi*t)")


