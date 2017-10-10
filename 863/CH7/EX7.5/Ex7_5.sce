//Caption:Design a astable multivibrator using 741 op amp
//Ex7.5
clc;
clear;
close;
f=300//Output frequency(in hertz)
Vo=11//Output Amplitude(in volts)
utp=0.5//Upper trigger voltage(in volts)
Vr3=0.5//Votage across R3 resistor(in volts)
Ib=500//Base current(in nA)
Vcc=Vo+1
I2=100*Ib/1000
R3=Vr3*1000/I2
Vr2=Vo-Vr3
R2=Vr2*1000/I2
Ir1=100*Ib/1000
Vr1=Vo-Vr3
R1=Vr1*1000/Ir1
t=1000/f
tc1=0.5*t
ltp=-utp
v=utp-ltp
C=Ir1*tc1*10^(-3)/v
disp(C,R3,R2,R1,'Circuit components for designing astable multivibrator are R1,R2,R3(in kilo ohm) and Capacitance(in micro farad)=')