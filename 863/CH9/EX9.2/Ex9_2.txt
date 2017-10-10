//Caption:Design a linear ramp generator
//Ex9.2
clc;
clear;
close;
V=5//Output voltage(in volts)
Vcc=15//Supply voltage(in volts)
Vce2=3//Voltage(in volts)
C1=1//Capacitance(in micro fard)
t=1//pulse width(in ms)
Vbe=0.7//Base emitter voltage(in volts)
V3=Vcc-Vce2-5
Ic=C1*V/t
R3=V3/Ic
Vb=V3+Vbe
I1=Ic/10
R1=Vb/I1
i1=Vb/R1
V2=Vcc-Vb
R2=V2/I1
disp(C1,R3,R2,R1,'Components required to design the circuit are resistors R1,R2,R3(in kilo ohm) and capacitance C1(in micro farad)=')