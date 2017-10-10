//Caption:Calculate resistance and amplitude of output signal
//Ex3.3
clc;
clear;
close;
E=2//Input voltage(in volts)
v=0.5//Input noise voltage(in volts)
Vf=0.7//Forward diode voltage(in volts)
if=1//Forward current of diode(in mA)
V=E-Vf
R=V/if
disp(V,R,'Resistance(in kilo ohm) and Output signal amplitude(in volts)=')