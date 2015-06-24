//Caption:Design a differentiating circuit by determining required resistances and capacitance
//Ex5.4
clc;
clear;
close;
Vo=5//Output voltage(in volts)
Vi=1//Change in input voltage(in volts)
t=100//Time period(in micro sec)
I=1//Circuit current(in mA)
R2=Vo/I
R1=R2*1000/20
R3=R2
C=Vo*t/(R2*Vi*1000)
disp(R3,R2,R1,C,'Required components for circuit are Capacitance(in micro farad),Resistances R1(in ohm),R2(in kilo ohm),R3(in kilo ohm)=')