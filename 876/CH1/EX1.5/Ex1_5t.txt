//caption:Find resolution of the meter
//Ex1.5
clc
clear
close
Rmax=100//maximum range of voltmeter(in V)
D=200//division on scale
Sd=0.5//divisions which can be read
V=Rmax/D
R=Sd*V
disp(R,'resolution of the meter is(in V)=')