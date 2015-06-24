//Ex 6.4
clc;clear;close;
format('v',5);
Range=0:10;//range
//(i)2-bit DAC
n=2;//no. of bits
step=max(Range)/2^n;//V
reading='10';//input in binary
Vo=step*bin2dec(reading);//V
disp(Vo,"(i) Output Voltage(V)");
//(ii)4-bit DAC
n=4;//no. of bits
step=max(Range)/2^n;//V
reading='0110';//input in binary
Vo=step*bin2dec(reading);//V
disp(Vo,"(ii) Output Voltage(V)");
//(i)8-bit DAC
n=8;//no. of bits
step=max(Range)/2^n;//V
reading='10111100';//input in binary
Vo=step*bin2dec(reading);//V
disp(Vo,"(iii) Output Voltage(V)");
