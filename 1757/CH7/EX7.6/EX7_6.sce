//Example7.6  // to design an active high pass filter with cut-off frequency 10KHz
clc;
clear;
close;
fc = 10 ; // KHz 
C = 0.01 ; //uF // we assume
// the cut-off frequency of active high pass filter is given by
// fc = 2*%pi*R3*C;
// R3 can be calculated as
R3 = (1/(2*%pi*fc*C));
disp('The resistance R3 is = '+string(R3)+' K ohm ');
