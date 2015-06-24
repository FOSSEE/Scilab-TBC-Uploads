//Ex 6.5
clc;clear;close;
n=8;//no. of bits
Res=20;//mV/bit(Resolution)
reading='00010110';//input in binary
Vo=Res*bin2dec(reading);//V
disp(Vo/1000,"(a) Output Voltage(V)");
reading='10000000';//input in binary
Vo=Res*bin2dec(reading);//V
disp(Vo/1000,"(b) Output Voltage(V)");
