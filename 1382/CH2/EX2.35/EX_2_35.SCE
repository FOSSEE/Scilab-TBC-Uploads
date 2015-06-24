// Example 2.35: Ic,Vc,Ve & Vce
clc;
clear;
close;
Vcc=30;// Colector voltage in volts
Beta=100;
Rc=6.2;// Collector resistance in killo ohms
Re=1.5;// Emitter resistance in killo ohms
Rb=690;// Base resistance in killo ohms
Vbe=0.7;// Base to emitter voltage in volts
Ib= (Vcc-Vbe)/(Rb+(1+Beta)*Rc+(1+Beta)*Re);
Ic=Ib*Beta;//in milli ampere
Ie=Ib*(1+Beta);//in milli ampere
Ve=Ie*Re;
Vce=Vcc-Ve-(Ic+Ib)*Rc;
Vc=Vce+Ve;
disp (Ic,"Collector current in milli Ampere")
disp(Vc,"collector voltage In Volts")
disp(Ve,"emitter voltage In Volts")
disp(Vce,"Colector to emitter voltage In Volts")
