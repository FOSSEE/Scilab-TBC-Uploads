// Example 2.20: Base Resistance , stability factor
clc;
clear;
close;
Vcc=20;// Colector voltage in volts
Beta=100;//Common emitter D.C. Current gain
Rc=1;// Collector resistance in killo ohms
Vce=4;// Collector to emitter voltage in volts
Ic= ((Vcc-Vce)/Rc); //in milli amperes
Ib=Ic/Beta;//in milli ampere
Rb=Vce/Ib;//in Killo ohms
S=(1+Beta)/(1+Beta*(Rc/(Rc+Rb)));
disp (Rb,"Base resistance in killo ohms")
disp (S,"The Stability factor")


