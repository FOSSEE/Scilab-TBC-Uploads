//Caption:Calculate Resistance and diode forward current
//Ex3.4
clc;
clear;
close;
E=10//Input voltage(in volts)
v=9//Output voltage(in volts)
i=1//Output current(in mA)
vf=0.7//Diode forward voltage(in volts)
R=E-v/i
if=E-vf/R
disp(if,R,'Resistance(in kilo ohm) and Diode forward current(in mA)=')