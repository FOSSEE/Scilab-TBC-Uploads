//Caption:Calculate Resistance
//Ex3.5
clc;
clear;
close;
V=2.7//Output voltage(in volts)
E=8//Input voltage(in volts)
i=1//Output current(in mA)
vf=0.7//Diode forward voltage(in volts)
if=1//Diode forward current(in mA)
vb=V-vf
R=(E-vb-vf)/(i+if)
disp(R,'Resistance(in kilo ohm)=')