// Exa 4.19
clc;
clear;
close;
// Given data
Vp= 1.5;// in V
f= 200;// in Hz
f_a= 1*10^3;// in Hz
C= 0.1*10^-6;// in F
// Formula f_a= 1/(2*%pi*f_a*C)
R= 1/(2*%pi*f_a*C);// in ohm
R= 1.5;// in kΩ (standard value)
f_b= 20*f_a;// in Hz
// Formula f_b= 1/(2*%pi*R_desh*C)
R_desh= 1/(2*%pi*f_b*C);// in ohm
R_desh= 82;// in ohm (standard value)
R_OM= R;// in kohm
disp(R_OM,"The value of R_OM in kΩ is : ")
omega= 2*%pi*f;// in radian
// Vin= Vp*sin(omega*t) and Vout= -R*C*dv_in/dt
// Vout= -R*C*Vp*omega*cos(400*%pi*t)
V= -R*10^3*C*Vp*omega;// (assumed)
//Vout= V*cos(400*%pi*t)
disp("Output voltage is "+string(V)+" *cos(400*%pi*t) volts")
disp("Output voltage waveforms shown in figure")
x= -%pi/2:0.1:2*%pi;
plot(x,V*cos(x));
title("Output Voltage waveforms")
xlabel("Time")
ylabel("Vout")
