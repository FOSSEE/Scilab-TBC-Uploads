//Introduction to Fiber Optics by A. Ghatak and K. Thyagarajan, Cambridge, New Delhi, 1999
//Example 13.11
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;
//given
R=0.5;//Responsivity in A/W
T=300;//Missing data- Temperature in K
C=1e-12;//Photodiode capacitance in F
BER=1e-9;//Bit error rate
SNR=144;//Signal-to-noise ratio corresponding to BER of (10)^(-9)
kB=1.38e-23;//Boltzmann constant in SI Units

//Case(i):
B=100e6;//Bit rate in b/s
Pmin=B/R*sqrt(2*%pi*kB*T*C*SNR);
mprintf("\n For 100 Mb/s, Pmin=%.2f uW",Pmin/1e-6);//Dividing by 10^(-6) to convert into uW

//Case(ii):
B=1e9;//Bit rate in b/s
Pmin=B/R*sqrt(2*%pi*kB*T*C*SNR);
mprintf("\n For 1 Gb/s, Pmin=%.2f uW",Pmin/1e-6);//Dividing by 10^(-6) to convert into uW
