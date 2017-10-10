//Caption:Design Schmitt circuit components R1,R2,R3,R4 and R5
//Ex6.5
clc;
clear;
close;
u=3//Upper trigger voltage(in volts)
Ib=500//Max base current(in nA)
Vf=0.7//Forward diode voltage(in volts)
Vk1=-2//Voltage(in volts)
Vcc=15//Collector voltage(in volts)
Vk2=-Vk1
i=Ib*0.1
R2=u*1000/i
I=u/R2
Vo=Vcc-1
Vr1=Vo-u
R1=Vr1/I
I4=100*i
Va1=Vk1+Vf
Vee=-Vcc
V4=Va1-Vee
R4=V4*1000/I4
Va2=Vk2+Vf
V5=Va2-Va1
R5=V5*1000/I4
R3=(Vcc-Va2)*1000/I4
disp(R5,R4,R3,R2,R1,'R1,R2,R3,R4,R5(in kilo ohm)=')