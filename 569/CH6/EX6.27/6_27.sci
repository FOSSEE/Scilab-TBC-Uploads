// Calculating the resolution of the instrument, quantization error and decesion levels
clc;
Reso=10*10^-3/10;
disp (Reso,'resolution of the instrument=')
n=10;
Q=10/2^n;
Eq=Q/(2*3^0.5);
disp (Eq,'quantization error=')
D=(2^n)-1;
disp (D,'decesion levels=')