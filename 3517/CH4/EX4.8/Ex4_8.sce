//Caption:Calculate Rc,Rb,and Cc
//Ex4.8
clc;
clear;
close;
Vcc=10//Collector voltage(in volts)
Vce=0.2//Saturated collector emitter voltage(in volts)
Ic=10//Collector current(in mA)
Vbe=0.7//Base emitter voltage(in volts)
hfe=100
Pw=1//Pulse width(in ms)
Vi=4//Input voltage(in volts)
Rc=(Vcc-Vce)*1000/Ic
Ib=Ic*1000/hfe
Rb=(Vcc-Vbe)*1000/Ib
Vb=Vi-Vbe-0.5
I=(Vcc+Vi)/Rb
Cc=I*Pw/Vb
disp(Cc,Rb,Rc,'Rc(in ohm),Rb(in kilo ohm),Cc(in micro farad)=')