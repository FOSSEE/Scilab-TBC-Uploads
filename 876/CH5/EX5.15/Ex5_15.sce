//caption:Find value of multiplier resistance
//Ex5.15
clc
clear
close
Vrms=20//voltmeter range(in V)
Ifsd=2*10^-3//ammeter reading(in A)
Rm=500//internal resistance(in ohm)
Sdc=1/Ifsd
Sac=0.9*Sdc
Rs=Sac*Vrms-Rm
disp(Rs,'value of multiplier resistance(in ohm)=')