// Example 2.21: Quiescent , stability factor
clc;
clear;
close;
Vcc=10;// Colector voltage in volts
Beta=50;//Common emitter D.C. Current gain
Rc=2;// Collector resistance in killo ohms
Rb= 100;// in kilo ohms
Vbe=0;// Base to emitter voltage in volts
Ic= (Vcc-Vbe)/(Rc+(Rb/Beta)); //in milli amperes
Ib=Ic/Beta;//in milli ampere
Vce= Vcc-(Ic*Rc); //Colector to emitter voltage in volts
S=(1+Beta)/(1+Beta*(Rc/(Rc+Rb)));
disp ("Operating point is (Vce,Ic) ")
disp(Vce,"Colector to emitter voltage In Volts")
disp (Ic,"Collector current in milli Ampere")
disp (S,"The Stability factor")
