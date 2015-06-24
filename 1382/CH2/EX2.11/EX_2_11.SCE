// Example 2.11: Calculate base current , Collector current and Collector to emitter voltage
Vcc=20;// Colector voltage in volts
Rb= 400;// in KILLO OHMS
Beta=100;//Common emitter D.C. Current gain
Rc=2;// Collector resistance in killo ohms
Re=1;// Emitter resistance in killo ohms
Ib= Vcc / (Rb + (Beta*Re));
Ic= Beta*Ib;
Vce=Vcc -(Ic*(Rc+Re));
disp(Ib,"Base current in mA")
disp(Ic,"Collector current in mA")
disp(Vce,"Collector to ground voltgae in volts")


