//Ex 6.8
clc;clear;close;
format('v',5);
n=8;//no. of bits
Range=0:10;//V
Vin=5.2;//V
oneLSB=max(Range)/2^n;//V
disp(oneLSB*1000,"(a) Minimum voltage for 1 LSB in mV");
Vifs=max(Range)-oneLSB;//V
disp(Vifs,"(b) For all ones input voltage should be (V)");
D=Vin/oneLSB;//Digital output in decimal
D=dec2bin(round(D));//Digital output in binary
disp(D,"(c) Digital Output");
