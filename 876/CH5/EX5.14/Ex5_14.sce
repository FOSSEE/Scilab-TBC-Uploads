//caption:Find value of multiplier resistance
//Ex5.14
clc
clear
close
Vrms=10//rms voltage of the voltmeter(in V)
Ifsd=2*10^-3//ammeter reading(in A)
Rm=100//internal resistance(in ohm)
Sdc=1/Ifsd
Rs=(Sdc*0.45*Vrms)-Rm
disp(Rs,'value of multiplier resistance(in ohm)=')