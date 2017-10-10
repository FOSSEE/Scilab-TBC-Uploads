clc;
Pout=2; //watt
Pin=0.0001; //watt
ApdB=10*log10(Pout/Pin);
disp('dB',ApdB,"ApdB=");//The answers vary due to round off error

