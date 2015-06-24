// Example 2.9.C: Calculate collector TO emitter voltage
Vcc=20;// Colector voltage in volts
Rb= 200;// in kilo ohms
Beta=75;//Common emitter D.C. Current gain
Rc=0.8;// Collector resistance in killo ohms
Vbe= 0;// Base to emitter voltage in volts
Ib=0.1;// Base current in mA
Ic=7.5;// Base current in mA
Vce=Vcc- (Ic*Rc)
disp(Vce,"Collector to emitter voltage in volts")
