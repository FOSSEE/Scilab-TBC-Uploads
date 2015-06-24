// Example 2.28: Ic,Vce
clc;
clear;
close;
Vcc=22;// Colector voltage in volts
Beta=40;
Rc=10;// Collector resistance in killo ohms
Re= 1.5;// in kilo ohms
R1= 40;// in kilo ohms
R2= 4;// in kilo ohms
Vbe=0.5;// Base to emitter voltage in volts
Vb=Vcc * (R2/(R1+R2)); // vOLTAGE AT BASE
Ic= (Vb-Vbe)/Re; //in milli amperes
Ib=Ic/Beta;//in milli ampere
Vce= Vcc-(Ic*(Rc+Re)); //Colector to emitter voltage in volts
disp(Vce,"Colector to emitter voltage In Volts")
disp (Ic,"Collector current in milli Ampere")
