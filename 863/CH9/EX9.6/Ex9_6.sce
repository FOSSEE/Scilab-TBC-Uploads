//Caption:Design a transistor bootstrap ramp generator
//Ex9.6
clc;
clear;
close;
V=8//Amplitude of output voltage(in volts)
Vd=0.7//Forward diode voltage(in volts)
Vce=0.2//Saturated collector emitter voltage(in volts)
t=1//Interval between pulses(in ms)
Vt=3//Triggering voltage(in volts)
E=15//Supply voltage(in volts)
vbe=0.7//Base emitter voltage(in volts)
vb=0.5//Bse voltage(in volts)
hfe=100
R=1//Load resistor(in kilo ohm)
Ie1=E/R
Ie2=(V-(-E))/R
Ib1=Ie1/hfe
Ib2=Ie2/hfe
Ibc=Ib2-Ib1
I1=100*Ibc/1000
C1=I1*t*1000/V
Vr1=E-Vd-Vce
R1=Vr1/I1
Vc3=E/100
C3=I1*t*1000/Vc3
Il=V/R
I1=100*Il/1000
Ic=10*I1
Ib=Ic/hfe
Rb=(E-vbe)/(Ib*1000)
Vbb=V-vbe-vb
I=(E+Vt)/Rb
C2=I*t/Vbb
disp(C3,C2,C1,Rb,'Circuit components are resistor Rb(in kilo ohm) and capacitances C1,C2,C3(in micro farad)=')