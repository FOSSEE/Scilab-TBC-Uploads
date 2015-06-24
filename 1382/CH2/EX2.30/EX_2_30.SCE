// Example 2.30:Voltage across Re
clc;
clear;
close;
Vcc=10;//in volts
Rb=200;//Base resistance in killo ohms
Vbe=0.8;// Base to emitter voltage in volts
Beta=100;
Vce=0.2;// Collector to emitter voltage in volts
Ib=5/Rb;// Base current in milli ampere
Ic=Beta*Ib;// Collector current in milli ampere
Rc= (Vcc-Vce)/Ic;// Resistance
disp(Rc,"Collector resistance in killo ohms") 
