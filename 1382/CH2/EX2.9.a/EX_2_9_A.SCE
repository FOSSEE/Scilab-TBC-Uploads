// Example 2.9.a: Calculate base current
Vcc=20;// Colector voltage in volts
Rb= 200;// in kilo ohms
Beta=75;//Common emitter D.C. Current gain
Rc=0.8;// Collector resistance in killo ohms
Vbe= 0;// Base to emitter voltage in volts
Ib=Vcc/Rb;
disp(Ib,"Base current in mA")
