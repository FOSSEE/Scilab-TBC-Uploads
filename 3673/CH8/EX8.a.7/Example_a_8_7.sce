//Example_a_8_7 page no:329
clc;
V=5;
I=0.1;
L=0.1;
C=5*10^-6;
R=V/I;
omega_r=1/sqrt(L*C);
fr=omega_r/(2*%pi);
Q=omega_r*L/R;//in text book the Q value is wrong but correct value is used in calculation of BW
BW=fr/Q;//BW value varies slightly hence Q value is rounded off in text book
disp(R,"the value of resistance at resonance is (in ohm)");
disp(fr,"the resonant frequency is (in Hz)");
disp(Q,"the quality factor is ");
disp(BW,"the bandwidth is (in Hz)");
//calculation of Q value is wrong in text book
