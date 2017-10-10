//Caption:Calculate Capacitance C1and C2,Diode reverse recovery time and input voltage
//Ex3.10
clc;
clear;
close;
V=12//Output voltage(in volts)
Vd=0.7//Diode forward voltage(in volts)
R=1.2//Load resistance(in Kilo ohm)
f=1//Frequency(in KHz)
r=10//Ripple in output voltage(in %)
Il=V/R
t=1000/(2*f)
C2=(Il*t)*10^(-3)/((r/(2*100))*V)
C1=(2*Il*t)*10^(-3)/((r/(2*100))*V)
trr=t/10
Vpp=V+((r/100)*V)+(2*Vd)
Vp=Vpp/2
disp(C1,C2,trr,Vp,'Input voltage(in volts),Diode reverse recovery time(in micro sec),C2 and C1(in micro farad)=')