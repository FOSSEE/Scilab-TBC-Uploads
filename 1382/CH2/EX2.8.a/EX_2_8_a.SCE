// Example 2.8.A: Calculate oerating point
Vcc=6;// Colector voltage in volts
Rb= 530;// in kilo ohms
Beta=100;//Common emitter D.C. Current gain
Rc=2;// Collector resistance in killo ohms
Vbe= 0.7;// Base to emitter voltage in volts
Ib= ((Vcc-Vbe)/Rb); //in micro amperes
Ic=Beta*Ib;//in milli ampere
Vce= Vcc-(Ic*Rc); //Colector to emitter voltage in volts
disp ("Operating point is (Vce,Ic)")
disp(Vce,"In Volts")
disp(Ic,"in mA")
