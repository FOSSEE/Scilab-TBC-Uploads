// Example 2.27: Find R
clc;
clear;
close;
Vcc=24;// Colector voltage in volts
Beta=45;
Rc=10;// Collector resistance in killo ohms
Re= 0.27;// in kilo ohms
Vce=5;// Collector to emitter voltage in volts
Vbe=0.6;// Base to emitter voltage in volts
Ib=(Vcc-Vce)/((1+Beta)*(Rc+Re));//in milli ampere
Ic=Ib/Beta;// in micro ampere
R=(Vce-Vbe)/Ib;// Resistance in killo ohms
disp (R,"Base resistance in killo ohms")

