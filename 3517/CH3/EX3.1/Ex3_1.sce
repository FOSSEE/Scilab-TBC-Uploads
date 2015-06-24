//Caption:Calculate (a)Resistance (b)Forward Current (c)Power dissipation (d)Peak Reverse Voltage
//Ex:3.1
clc;
clear;
close;
e=50//Input voltage(in volts)
i=20//Output Current(in mA)
v=0.5//Output voltage(in volts)
is=5//Reverse Leakage Current(in micro ampere)
vf=0.7//Forward voltage of diode(in volts)
R=v*1000/is
disp(R,'(a)Resistance(in Kilo ohm)=')
I=(e-vf)/R
P=(e^2)/R
if=i+I
disp(if,'(b)Forward Current(in mA)=')
p=vf*if
disp(p,'(c)Power Dissipation(in mW)=')
ep=-e
disp(ep,'(d)Peak Reverse Voltage(in volts)=')