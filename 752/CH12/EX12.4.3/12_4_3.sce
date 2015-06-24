clc;
//page no 421
//problem no 12.4.3
SNR=9;//SNR in dB
//conversion of dB to power ratio
p=10^(9/10);
// for Polar
Pbe1=1/2 * erfc(sqrt(7.94/2));
disp(Pbe1);
// for Unipolar
Pbe2=1/2 * erfc(sqrt(7.94)/2);
disp(Pbe2);