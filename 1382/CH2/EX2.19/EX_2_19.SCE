// Example 2.19: Operating point , stability factor
clc;
clear;
close;
Vcc=10;// Colector voltage in volts
Rb= 930;// in kilo ohms
Beta=100;//Common emitter D.C. Current gain
Rc=4;// Collector resistance in killo ohms
Vbe= 0.7;// Base to emitter voltage in volts
Ib= ((Vcc-Vbe)/Rb); //in milli amperes
Ic=Beta*Ib;//in milli ampere
Vce= Vcc-(Ic*Rc); //Colector to emitter voltage in volts
S=(1+Beta);
disp ("Operating point is (Vce,Ic) ")
disp(Vce,"Coolector to emitter voltage In Volts")
disp (Ic,"Collector current in milli Ampere")
disp (S,"The Stability factor")


