// Example 2.39.b: Re , S
clc;
clear;
close;
Vcc=12;// Colector voltage in volts
Beta=50;
Vce=2.5;// Collector to emitter voltage in volts
Vbe=0.7;// Base to emitter voltage in volts
Re= 2.57;// Emitter resistance in killo ohms
Rc=4.2;// Collector resistance in killo ohms
Ic=14/(Rc+(1+(1/Beta)*Re));
Ib= (6-Vbe-Ic*Re)/Re;
DeltaIb= -1;// Change in base Current
S= (1+Beta)/(1+Beta);
disp(Re,"Resistance in killo ohms")
disp(S,"Stability Fcator is")
