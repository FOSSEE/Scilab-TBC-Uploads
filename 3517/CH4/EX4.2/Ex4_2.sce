//Caption:Calculate the transistor power dissipation at (a)Cutoff (b)Saturation (c)When Vce is 2V
//Ex4.2
clc;
clear;
close;
Vcc=10//Collector voltage(in volts)
Ic=50//Collector current(in nA)
Rc=1//Collector resistor(in kilo ohm)
Vs=0.2//Voltage of collector emitter junction at saturation(in volts)
Vce=2//Collector emitter voltage(in volts)
P1=Ic*Vcc/1000
disp(P1,'(a)Power dissipation at cutoff(in micro watt)=')
P2=(Vcc/Rc)*Vs
disp(P2,'(b)Power dissipation at saturation(in mW)=')
I=(Vcc-Vce)/Rc
P3=I*Vce
disp(P3,'(c)Power dissipation at given Vce(in mW)=')