//Caption:Design RC ramp generator
//Ex9.1
clc;
clear;
close;
V=5//Output voltage(in volts)
Vs=15//Supply voltage(in volts)
R=100//Load resistance(in kilo ohm)
v=3//Amplitude of triggering pulse(in volts)
vb=0.5//Bse voltage(in volts)
p=1//Pulse width(in ms)
t=0.1//Time interval(in ms)
vbe=0.7//Base emitter voltage(in volts)
E=0.2//Initial voltage(in volts)
e=5//Final voltage(in volts)
hfe=50
Il=V/R
I1=100*Il/1000
R1=(Vs-V)/(I1*1000)
C1=p/(R1*log((Vs-E)/(Vs-e)))
Ic=10*I1
Ib=Ic/hfe
Rb=(Vs-vbe)/(Ib*1000)
Vbb=v-vbe-vb
I=(Vs+v)/Rb
C2=I*p/Vbb
disp(C2,C1,R1,Rb,'Components required to design circuit are resistances Rb,R1(in kilo ohm) and Capacitors C1,C2(in micro farad)=')