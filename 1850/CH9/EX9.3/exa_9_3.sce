// Exa 9.3
clc;
clear;
close;
//given data
C=0.01;// in micro F
C=C*10^-6;// in  F
f=1;// in kHz
f=f*10^3;// in Hz
// R_A= R_B
// T_on = T_off = T/2
// Frequency is given by equation f= 1.44/((R_A+R_B)*C)
R_A= 1.44/(2*f*C);// in ohm
R_A=R_A*10^-3;// in k ohm
R_B= R_A;

disp("Resistors required  : "+string(R_A)+" k ohm (68 ohm standart value)");
