// Example 6.1
clc;
clear;
close;
// Given data
format('v',6);
R1= 15*10^3;// in Ω
C1= 0.01*10^-6;// in F
C2= 10*10^-6;// in F
R2= 3.6*10^3;// in Ω
Vpos= 12;// in V
Vneg= -12;// in V
f_out= 1.2/(4*R1*C1);// free running frequency in Hz
f_out= f_out*10^-3;// in kHz
disp("The free running frequency is : "+string(f_out)+" kHz");
f_L= 8*f_out/(Vpos-(Vneg));//Lock-range in kHz
disp("Lock-range of the circuit is : ± "+string(f_L)+" kHz");
f_L= f_L*10^3;// in Hz
f_C= sqrt(f_L/(2*%pi*R2*C2));// Hz
disp("Capture-range of the circuit is : ± "+string(f_C)+" Hz");
