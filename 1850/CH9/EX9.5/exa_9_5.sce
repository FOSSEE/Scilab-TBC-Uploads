// Exa 9.5
clc;
clear;
close;
//given data
f=800;// in Hz
D=60;// in percent
// Formula D= (R_A+R_B)/(R_A+2*R_B)*100 = 60
// R_A + R_B = 0.6*R_A + 1.2*R_B
// R_B= 2*R_A
C=0.01;// in micro F  (assumed value)
C=C*10^-6;// in  F
// Frequency is given by equation f= 1.44/((R_A+R_B)*C)
R_A= 1.44/(5*C*f);// in ohm
R_A=R_A*10^-3;// in kohm
R_B=2*R_A;// in kohm
disp("Resistors required  : "+string(R_A)+" k ohm and "+string(R_B)+" k ohm");
