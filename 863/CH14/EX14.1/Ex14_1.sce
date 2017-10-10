//Caption:Determine Resistors Rc and Rb
//Ex14.1
clc;
clear;
close;
Vcc=5//Collector voltage(in volts)
Vi=5//Input voltage(in volts)
Vf=1.2//Diode forward voltage(in volts)
hfe=100
I=20//Diode minimum forward current(in mA)
Vce=0.2//Collector emitter saturated voltage(in volts)
Vbe=0.7//Base emitter voltage(in volts)
Rc=(Vcc-Vf-Vce)*1000/I
Ib=I*1000/hfe
Rb=(Vi-Vbe)*1000/Ib
disp(Rb,Rc,'Resistors are Rc and Rb(in kilo ohm)=')