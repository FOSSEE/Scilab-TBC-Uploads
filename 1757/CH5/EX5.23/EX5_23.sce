//Example5.23  // To determine input output miller capacitances
clc;
clear;
close;
A = 150 ; //gain
Cm = 0.02 ;  // uF // compensated capacitor

// the input output miller capacitance are defined as
Cin = Cm*(A+1);
disp('The input miller capacitance Cin value is = '+string(Cin)+'uF ');
Cout = (Cm*((A+1)/A)); 
disp('The output miller capacitance Cout value is = '+string(Cout)+'uF ');

// In the miller compensating network input capacitance introduce a pole . The initiated frequency of miller compensating network by pole is define as

// fp = 1/(2*%pi*R*Cin);
R = 1 ; // K ohm
fp = 1/(2*%pi*R*Cout);
disp('The initiated frequency of miller compensating network by pole is = '+string(fp)+' KHz ');
