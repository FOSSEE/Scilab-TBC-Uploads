//Caption:Design a UJT relaxation oscillator and find peak to peak output amplitude
//Ex9.5
clc;
clear;
close;
Vbb=20//Supply voltage(in volts)
f=5//Frequency(in khz)
Veb=3//Fringe Voltage(in volts)
Ip=2//Fringe current(in micro ampere)
Iv=1//Emitter current(in mA)
n=0.75
Vp=0.7+(n*Vbb)
R1x=(Vbb-Vp)/Ip
R1n=(Vbb-Veb)/Iv
t=1000/f
C1=t*1000/(R1n*(log((Vbb-Veb)/(Vbb-Vp))))
E=Vp-Veb
disp(C1,R1n,E,'Peak to peak voltage(in volts) and Components for circuit are resistor(in kilo ohm) and capacitance(in pf)=')