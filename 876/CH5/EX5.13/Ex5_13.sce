//caption:Find value of required multiplier resistance
//Ex5.13
clc
clear
close
Iav=100*10^-6//current value(in A)
Rm=100//internal resistance(in ohm)
Vrms=100//maximum rms range(in V)
Rs=0.45*(Vrms/Iav)-Rm
disp(Rs,'value of multiplier resistance(in ohm)=')