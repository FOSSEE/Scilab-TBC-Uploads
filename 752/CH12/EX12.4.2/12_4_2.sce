clc;
//page no 420
//problem no 12.4.2
//a binary unipolar waveform with following specifications are given
A=4;//max value of received signal voltage
Vn=0.5;//rms noise voltage
Vth=2;//Threshold voltage for the comparator
b=erfc(4/sqrt(2));
Pbe=1/2 * b;// bit error probability
disp(Pbe,'The bit error probability');