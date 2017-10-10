//Caption:Design a monostable multivibrator using op amp 741
//Ex7.3
clc;
clear;
close;
Vcc=15//Collector voltage(in volts)
Vt=1.5//Trigger voltage(in volts)
t=200//Output pulse width(in micro sec)
Ib=500//Base current(in nA)
Vr2=1//R2 Resistor voltage(in volts)
I2=0.1*Ib
R2=Vr2*1000/I2
i2=Vr2*1000/R2
Vr1=Vcc-Vr2
R1=Vr1*1000/i2
R3=(R1*R2)/(R1+R2)
E=Vr2-(Vcc-1)
ec=Vcc-1
Ec=Vr2+(Vcc-1)
Rc=R1*R2/(R1+R2)
C=t*1000/(Rc*log((Vcc-E)/(Vcc-ec)))
disp(C,R3,R2,R1,'Circuit components are resistances R1,R2,R3(in kilo ohm) and Capacitance(in pF)=')