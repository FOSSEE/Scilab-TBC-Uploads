//Caption:Find capacitance
//Ex7.2
clc;
clear;
close;
t=250//Pulse width(in micro sec)
E=9//Input voltage(in volts)
Vbe=0.7//Base emitter voltage(in volts)
Vd=0.7//Diode forward voltage(in volts)
Rb=180//Base resistor(in kilo ohm)
Eo=-(E-Vbe-Vd)
C=t*1000/(Rb*log((E-Eo)/E))
disp(C,'Required capacitance(in pF)=')