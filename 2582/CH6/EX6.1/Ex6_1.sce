//Ex 6.1
clc;clear;close;
n=8;//no. of bits
V1=0;//V
V2=5.12;//V
Res=2^n;//resolution
disp(Res,"(a) Resolution=");
delVo=(V2-V1)/Res*1000;//mV/bit
disp(delVo,"(b) Output change per bit(mV/bit)");
VFS=V2*(1-1/2^n);//V
disp(VFS,"(c) Full scale Output voltage(V)");
