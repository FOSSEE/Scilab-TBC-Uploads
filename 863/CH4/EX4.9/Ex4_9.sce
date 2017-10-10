//Caption:Determine required capacitance
//Ex4.9
clc;
clear;
close;
E=4//Input voltage(in volts)
Pw=1//Pulse width(in ms)
Rs=1//Source resistance(in kilo ohm)
Vce=0.2//Saturated Collector emitter voltage(in volts)
Rc=1//Collector resistance(in kilo ohm)
Vcc=10//Collector voltage(in volts)
hfe=100
Vbe=0.7//Base emitter voltage(in volts)
Rb=10//Base resistance(in kilo ohm)
Ic=(Vcc-Vce)/Rc
Ib=Ic*1000/hfe
Irb=Vbe*1000/Rb
ic=Ib+Irb
I=(E-Vbe)/Rs
C=Pw/(Rs*(log(I*1000/ic)))
disp(C,'Required capacitance(in micro farad)=')