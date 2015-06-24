//Caption:Design a astable multivibrator 
//Ex7.4
clc;
clear;
close;
f=1//Frequency of output waveform(in Khz)
Vs=5//Supply voltage(in volts)
Il=20//Output load current(in micro Ampere)
hfe=70
Vbe=0.7//Base emitter voltage(in volts)
Ic=Il*100/1000
Rc=Vs/Ic
Ib=Ic/hfe
Rb=(Vs-Vbe)/Ib
pw=1/(2*f)
C=pw*10^(6)/(0.69*Rb)
disp(C,Rb,Rc,'Components required to design a astable multivibrator are resistances Rb,Rc(in kilo ohm) and Capacitance(in pf)=')