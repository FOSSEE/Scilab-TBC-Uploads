// Calculating reference voltage and percentage change
clc;
E=10;
ER=E*256/255;
disp(ER,'Reference voltage (V)=')
n=8;
CVlsb=(2^-n)*ER;
PC=CVlsb*100/E;
disp(PC,'Percentage change =')