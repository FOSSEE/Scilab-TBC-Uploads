// Example 2.33:Ic & Vce
clc;
clear;
close;
Vcc=18;// Colector voltage in volts
Rc=2.2;// Collector resistance in killo ohms
Rb=510;// Base resistance in killo ohms
Re=1.8;// Emitter resistance in killo ohms
Beta=90;//Common emitter D.C. Current gain
Ib=Vcc/(Rb+Beta*(Rc+Re));// Base Current in mA
Ic=Beta*Ib;// Collector current in mA
Beta=Ic/Ib;//Common emitter D.C. Current gain
Vce= Ib*Rb;//Collector to emitter voltage in volts
disp(Vce,"Colector to emitter voltage In Volts")
disp (Ic,"Collector current in milli Ampere")
