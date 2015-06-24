clc;
//page no 419
// problem no 12.4.1
//a binary polar waveform with following specifications are given
Vs_Vn=4;//SNVR
a=erf(4/sqrt(2));
b=erfc(4/sqrt(2));
Pbe=1/2 * b;// bit error probability
disp(a);
disp(b);
disp(Pbe,'The bit error probability');