// Example 2.26.a: Find R1,R2 & Re
clc;
clear;
close;
Vcc=10;// Colector voltage in volts
Beta=50;//Common emitter D.C. Current gain
Rc=2;// Collector resistance in killo ohms
Vce=4;// Collector to emitter voltage in volts
Vbe=0.3;// Base to emitter voltage in volts
Ic=2;//Collector current in milli Ampere
Ib=Ic/Beta;//Base current in milli ampere
I1=10*Ib;//
Ie=Ic;// Emitter current in mili ampere
Re=(Vcc-Ic*Rc-Vce)/Ic;//Emiier Resistance
V2=Vbe+Ic*Re;//Voltage across R2
R2=V2/I1;
R1=25-R2;
disp(R1,"resistance in killo ohms")
disp(R2,"resistance in killo ohms")
disp(Re,"emitter resistance in killo ohms")
