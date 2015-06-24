// Example 5.28:gain
clc;
clear;
close;
gm= 10;//transconductane in milli ampere per volt
Csh=20;//capacitance in pico farad
BW=10;//bandwidth in mega hertz
fhn=10;//in mega hertz
n=2;//
x=sqrt(2^(1/n)-1);//
fh=fhn/x;//lower cut off frequency in mega hertz
R=(1/(2*%pi*Csh*10^-12*fh*10^6));//resiatnce in ohms
Av1=-gm*R*10^-3;//mid frequency gain of first stage
Av2=Av1;//mid frequency gain of second stage
Av= Av1*Av2;//total gain
Avdb=20*(log10(Av));//total gain dB
disp(Avdb,"total gain in dB is")

