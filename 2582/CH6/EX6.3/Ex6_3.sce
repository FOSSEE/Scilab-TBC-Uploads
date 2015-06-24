//Ex 6.3
clc;clear;close;
format('v',5)
n=8;//no. of bits
Range=0:10;//range
LSB=max(Range)/2^n;//V
MSB=max(Range)/2^0;//V
VFS=MSB-LSB;//V
disp(LSB*1000,"LSB(mV)");
disp(MSB,"MSB(V)");
disp(VFS,"VFS(V)");
