// Example 2.13: Calculate  Collector current , Collector to emitter voltage and stability factor
Vcc=20;// Colector voltage in volts
Vbe=0.7;// Base to emitter voltage  in volts
Rb= 200;// in KILLO OHMS
Beta=100;//Common emitter D.C. Current gain
Rc=20;// Collector resistance in killo ohms
Ic= (Vcc-Vbe)/(Rc + (Rb/Beta));
Vce=Vcc -(Ic*Rc);
S=(1+Beta)/(1+Beta*(Rc/(Rc+Rb)));
disp (S,"The Stability factor")
disp(Ic,"Collector current in mA")
disp(Vce,"Collector to ground voltgae in volts")
