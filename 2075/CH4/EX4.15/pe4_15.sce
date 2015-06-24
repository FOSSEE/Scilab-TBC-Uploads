//example 4.15
clc; funcprot(0);
// Initialization of Variable
R=8//resistance
Ts=35//temperature
Ta=150//temperature
Vm=42//voltage
//calcuation
Vp=Vm-5;
Vr=Vp/2^.5;
Pm=Vr^2/R;
disp(Pm,"power delivered in watt:")
P=45;
Qs=(Ta-Ts)/P-1.2;
disp(round(Qs*10)/10,"thermal resistance in degreeC/W")
clear()
