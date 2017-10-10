//Example 8_6 page no:308
clc;
R=100;
L=5;
C=100*10^-6;
fr=1/(2*%pi*sqrt(L*C));
Q=2*%pi*7.12*5/100;
BW=fr/Q;
disp(BW,"bandwidth of the circuit is (in Hz)");
