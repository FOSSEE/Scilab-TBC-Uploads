clear;
clc;
//Example 14.7
fT=1000;//KHz
Aclo=10;
SR=1*10^3;
Vpo=10;
f3dB=fT/Aclo;
printf('\nsmall signal closed loop bandwidth=%.2f KHz\n',f3dB)
fmax=SR/(2*%pi*Vpo);
printf('\nfull power bandwidth=%.2f KHz\n',fmax)
