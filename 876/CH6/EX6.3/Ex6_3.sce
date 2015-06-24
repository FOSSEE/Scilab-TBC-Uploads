//caption:Find output voltage if input is 101101111
//Ex6.3
clc
clear
close
V=10.3*10^-3//input voltage of DAC convertor(in V)
Vo=(V)*(1*2^8+0*2^7+1*2^6+1*2^5+0*2^4+1*2^3+1*2^2+1*2^1+1*2^0)
disp(Vo,'output voltage(in V)=')