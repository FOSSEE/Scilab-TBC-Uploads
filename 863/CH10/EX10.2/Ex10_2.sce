//Caption:Find minimum value of the resistance to design OR Gate
//Ex10.2
clc;
clear;
close;
Rc=3.3//Collector resistance(in kilo ohm)
V=3.5//Gate output voltage(in volts)
Vcc=5//Supply voltage(in volts)
Vf=0.7//Forward diode voltage(in volts)
I=(Vcc-Vf-V)/Rc
R=V/I
disp(R,'Minimum value of resistance to design the circuit is(in kilo ohm)=')