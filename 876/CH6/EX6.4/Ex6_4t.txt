//caption:Find values of(a)LSB(b)MSB(c)full scale output
//Ex6.4
clc
clear
close
N=8//bit of the DAC convertor
Rmin=0//minimum range(in V)
Rmax=10//maximum range(in V)
LS=1/(2^N)
LSB=Rmax*LS
disp(LSB,'(a)LSB(in V)=')
MSB=Rmax/2
disp(MSB,'(b)MSB(in V)=')
F=Rmax-LSB
disp(F,'(c)full scale output(in V)=')