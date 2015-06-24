// Example 2.14: Calculate  base current , Collector current  , Collector to emitter voltage and stability factor
Vcc=10;// Colector voltage in volts
Vbe=0;// Base to emitter voltage  in volts
Rb= 100;// in KILLO OHMS
Beta=100;//Common emitter D.C. Current gain
Rc=10;// Collector resistance in killo ohms
Ib= (Vcc-Vbe)/(Rb+ Beta*Rc);
Ic= Beta * Ib;
Vce=Vcc -(Ic*Rc);
S=(1+Beta)/(1+Beta*(Rc/(Rc+Rb)));
disp(Ib,"base current in mA")
disp(Ic,"Collector current in mA")
disp(Vce,"Collector to ground voltgae in volts")
disp (S,"The Stability factor")
