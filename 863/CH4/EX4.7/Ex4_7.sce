//Caption:Design a transistor by determining Rc,Rb and amplitude of output waveform
//Ex4.7
clc;
clear;
close;
E=10//Input voltage(in volts)
Vcc=15//Collector voltage(in volts)
R=100//Load resistance(in kilo ohm)
Vce=0.2//Saturted collector emitter voltage(in volts)
Vd=0.7//Diode forward voltage(in volts)
hfe=35
Vbe=0.7//Base emitter voltage(in volts)
Rc=R/10
Ic=(Vcc-Vce-Vd)/Rc
Ib=Ic/hfe
Rb=(E-Vbe-Vd)/Ib
Vmin=Vd+Vce
Vmax=(Vcc*R)/(R+Rc)
Vo=Vmax-Vmin
disp(Vo,Rb,Rc,'Rc,Rb(in kilo ohm),and amplitude of output waveform(in volts)=')