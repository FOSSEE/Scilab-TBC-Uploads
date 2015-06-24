// Example 2.9.B: Calculate collector current
Vcc=20;// Colector voltage in volts
Rb= 200;// in kilo ohms
Beta=75;//Common emitter D.C. Current gain
Rc=0.8;// Collector resistance in killo ohms
Vbe= 0;// Base to emitter voltage in volts
Ib=0.1;// Base current in mA
Ic=Beta*Ib;// Collector current in mA
disp(Ic,"Collector current in mA")
