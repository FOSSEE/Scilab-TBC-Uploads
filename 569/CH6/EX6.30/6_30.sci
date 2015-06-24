// Calculating the number of bits, Value of LSB, Quantization error,minimum sampling rate Aperature time and dynamic range
clc;
n=14;
disp(n,'number of bits =')
E=10;
Q=10;
LSB=E/2^n;
disp(LSB,'Value of LSB (V) =')
Eq=Q/(2*(3^0.5));
disp(Eq,'Quantization error (V) =')
fh=1000;
fs=5*fh;
disp(fs,'minimum sampling rate (Hz) =')
a=1/16384;
ta=1/(2*%pi*fh)*a;
disp(ta,'Aperature time (s) =')
Dr=6*n;
disp(Dr,'dynamic range (db) =')
