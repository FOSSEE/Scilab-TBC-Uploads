//Ex 6.6
clc;clear;close;
n=12;//no. of bits
Eoff=0.05;//%//maximum offset error
Vref=10.24;//V
Voffset=Eoff/100*Vref;//V
disp(round(Voffset*1000),"(a) Offset voltage(mV)");
delVo=Vref/2^n;//V/bit
Voff_dash=Voffset/delVo;//in terms of LSB
disp(round(Voff_dash),"(b) Offset voltage in terms of LSB");
