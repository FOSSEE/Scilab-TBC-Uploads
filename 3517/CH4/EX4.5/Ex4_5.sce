//Caption:Calculate Rc and Rb
//Ex4.5
clc;
clear;
close;
Vcc=12//Collector voltage(in volts)
V=3//Input voltage(in volts)
Ic=1//collector current(in mA)
Vce=0.2//Saturated collector emitter voltage(in volts)
hfe=70
Vbe=0.7//Base emitter voltage(in volts)
Rc=(Vcc-Vce)/Ic
Ib=Ic*1000/hfe
Rb=(V-Vbe)*1000/Ib
disp(Rb,Rc,'Rc and Rb(in kilo ohm)=')