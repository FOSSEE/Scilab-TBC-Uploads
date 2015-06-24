// Example 2.22: Collector to emitter bias voltage
clc;
clear;
close;
Vcc=20;// Colector voltage in volts
Beta=100;//Common emitter D.C. Current gain
Rc=2;// Collector resistance in killo ohms
Rb= 100;// in kilo ohms
Vbe=0.7;// Base to emitter voltage in volts
Ic=10; //in milli amperes
Ib=Ic/Beta;//in milli ampere
Vce= Vbe+(Ib*Rb); //Colector to emitter voltage in volts
disp(Vce,"Colector to emitter voltage In Volts")
disp (Ib,"Base current in milli Ampere")
