//Example5.22 // To determine input output miller capacitances
clc;
clear;
close;
A = 100 ; //gain
Cm = 0.1 ;  // uF // compensated capacitor

// the input output miller capacitance are defined as
Cin = Cm*(A+1);
disp('The input miller capacitance Cin value is = '+string(Cin)+'uF ');
Cout = (Cm*((A+1)/A)); 
disp('The output miller capacitance Cout value is = '+string(Cout)+'uF ');
