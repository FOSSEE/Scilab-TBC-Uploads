//Caption:Design a astable multivibrator using 311 comparator
//Ex7.6
clc;
clear;
close;
V=12//Supply voltage(in volts)
f=3//Frequency(in Khz)
Ib=250//Base current(in nA)
R2=1//Selected resistor(in kilo ohm)
I4=100*Ib/1000
Vr4=V/3
R4=Vr4*1000/I4
R3=R4
R5=R4
Ir2=V/R2
Ir1=100*Ib/1000
Vr1=Vr4
R1=Vr1*1000/Ir1
t=1000/(2*f)
C=t*1000/(R1*(log (2)))
disp(C,R5,R4,R3,R2,R1,'Circuit components required to design the circuit are R1,R2,R3,R4,R5(in kilo ohm) and Capacitance(in pF)=')