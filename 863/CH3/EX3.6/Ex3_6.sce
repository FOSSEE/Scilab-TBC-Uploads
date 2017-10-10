//Caption:Find Zener voltage and Resistance
//Ex3.6
clc;
clear;
close;
E=25//Input voltage(in volts)
V=11//Output voltage(in volts)
Vf=0.7//Forward diode voltage(in volts)
i=1//Output current(in mA)
v=9.1//Voltage for 1N757 diode
I=20//Current across 1N757 diode(in mA)
Vz=V-Vf
Vr=E-(Vf+v)
Iz=0.25*I
Ir=Iz+i
R=Vr/Ir
disp(R,Vz,'Zener voltage(in volts) and Resistance(in Kilo ohm)=')